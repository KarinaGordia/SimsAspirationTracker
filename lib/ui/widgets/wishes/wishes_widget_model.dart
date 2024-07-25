import 'package:achievements/app_game_lists/app_game_lists.dart';
import 'package:achievements/domain/entities/wish.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget.dart';
import 'package:flutter/material.dart';

class WishesWidgetModel extends ChangeNotifier {
  WishesWidgetConfiguration configuration;
  final _wishes = <Wish>[];

  List<Wish> get wishes => _wishes;

  WishesWidgetModel({required this.configuration}) {
    _getWishesFromPacks();
  }

  void _getWishesFromPacks() {
    final packs = GameList.games[configuration.gameKey].packs.values.toList();
    for(var pack in packs) {
      _wishes.addAll(pack.wishes);
    }
  }

  void openEndDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
    scaffoldKey.currentState!.openEndDrawer();
  }

  Future<void> completeWish(int taskIndex) async {
    // final task = (await _box).getAt(taskIndex);
    // task?.isDone = !task.isDone;
    // await task?.save();
  }

  Future<void> _readCompletedWishesFromHiveBox() async {
    // _tasks = (await _box).values.toList();
    // notifyListeners();
  }
}

class WishesWidgetModelProvider extends InheritedWidget {
  final WishesWidgetModel model;
  const WishesWidgetModelProvider ({
    super.key,
    required this.model,
    required super.child,
  });

  static WishesWidgetModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<WishesWidgetModelProvider>();
  }

    static WishesWidgetModelProvider? read(BuildContext context) {
    final widget = context.getElementForInheritedWidgetOfExactType<WishesWidgetModelProvider>()?.widget;
    return widget is WishesWidgetModelProvider ? widget : null;
  }

  @override
  bool updateShouldNotify(WishesWidgetModelProvider oldWidget) {
    return true;
  }
}
