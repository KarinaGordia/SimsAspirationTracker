import 'package:achievements/app_game_lists/games.dart';
import 'package:achievements/domain/entities/pack.dart';
import 'package:flutter/material.dart';

class FiltersWidgetModel extends ChangeNotifier{
  var _packs = <Pack>[];
  List<Pack> get packs => _packs.toList();

  FiltersWidgetModel({required gameIndex}) {
    _set(gameIndex);
  }

  _set(int gameIndex) {
    _packs = GameList.games[gameIndex].packs.values.toList();
  }

  void togglePack(Pack pack) {
    pack.isToggled = !pack.isToggled;
    notifyListeners();
  }

  void filterWishes() {}
  void resetFilters() {}
}

class FiltersWidgetModelProvider extends InheritedNotifier {
  final FiltersWidgetModel model;

  const FiltersWidgetModelProvider ({
    super.key,
    required this.model,
    required super.child,
  }) : super(notifier: model,);

  static FiltersWidgetModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FiltersWidgetModelProvider>();
  }

    static FiltersWidgetModelProvider? read(BuildContext context) {
    final widget = context.getElementForInheritedWidgetOfExactType<FiltersWidgetModelProvider>()?.widget;
    return widget is FiltersWidgetModelProvider ? widget : null;
  }
  //
  // @override
  // bool updateShouldNotify(FiltersWidgetModelProvider oldWidget) {
  //   return true;
  // }
}
