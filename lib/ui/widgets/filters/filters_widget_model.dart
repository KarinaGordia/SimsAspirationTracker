import 'package:achievements/domain/app_game_lists/app_game_lists.dart';
import 'package:achievements/domain/entities/pack.dart';
import 'package:flutter/material.dart';

import 'filters_widget.dart';

class FiltersWidgetModel extends ChangeNotifier{
  FilterWidgetConfiguration configuration;
  final _packs = <Pack>[];
  List<Pack> get packs => _packs.toList();

  // final List<Pack> _toggledPacks = [];
  // List<Pack> get toggledPacks => _toggledPacks.toList();

  final List<String> _toggledPackKeys = [];
  List<String> get toggledPacks => _toggledPackKeys.toList();

  final List<String> _choicesList = ['All', 'Completed', 'Uncompleted'];
  List<String> get choicesList => _choicesList;

  FiltersWidgetModel({required this.configuration}) {
    _set(configuration.gameIndex);
    selectStatusFilter(configuration.filterIndex);
  }

  _set(int gameIndex) {
    _packs.addAll(GameList.games[gameIndex].packs.values);

    final toggledPacks = _packs.where((pack) => pack.isToggled).toList();
    for(var pack in toggledPacks) {
      _toggledPackKeys.add(pack.key);
    }
  }

  void togglePack(Pack pack) {
    pack.isToggled = !pack.isToggled;

    if(_toggledPackKeys.contains(pack.key)) {
      _toggledPackKeys.remove(pack.key);
    } else {
      _toggledPackKeys.add(pack.key);
    }

    notifyListeners();
  }

  void selectStatusFilter(int index) {
    configuration.filterIndex = index;
    notifyListeners();
  }

  void resetFilters() {
    _toggledPackKeys.clear();

    for(var pack in _packs) {
      pack.isToggled = false;
    }

    configuration.filterIndex = 0;
    notifyListeners();
  }

  void closeEndDrawer(BuildContext context) {
    Navigator.of(context).pop();
  }
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
