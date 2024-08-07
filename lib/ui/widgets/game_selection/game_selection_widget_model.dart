import 'package:achievements/app_game_lists/app_game_lists.dart';
import 'package:achievements/domain/data_provider/box_manager.dart';
import 'package:achievements/ui/navigation/main_navigation.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class GameSelectionWidgetModel {
  final games = GameList.games.toList();

  GameSelectionWidgetModel() {
    _setup();
  }

  late final Future<Box<List<String>>> _box;

  Future<void> _setup() async {
    _box = BoxManager.instance.openAppBox();
    final box = await _box;
    // box.put('TS3', []);
    // box.put('TS4', []);
  }

  void showWishes(BuildContext context, int gameIndex) {
    final configuration = WishesWidgetConfiguration(
        gameIndex:gameIndex, gameIconName: games[gameIndex].iconName);

    Navigator.of(context)
        .pushReplacementNamed(MainNavigationRouteNames.wishes, arguments: configuration);
  }
}

class GameSelectionWidgetModelProvider extends InheritedWidget {

  final GameSelectionWidgetModel model;

  const GameSelectionWidgetModelProvider ({
    super.key,
    required this.model,
    required super.child,
  });

  static GameSelectionWidgetModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GameSelectionWidgetModelProvider>();
  }

    static GameSelectionWidgetModelProvider? read(BuildContext context) {
    final widget = context.getElementForInheritedWidgetOfExactType<GameSelectionWidgetModelProvider>()?.widget;
    return widget is GameSelectionWidgetModelProvider ? widget : null;
  }

  @override
  bool updateShouldNotify(GameSelectionWidgetModelProvider oldWidget) {
    return true;
  }
}