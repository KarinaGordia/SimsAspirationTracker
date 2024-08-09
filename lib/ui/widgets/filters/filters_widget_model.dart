import 'package:achievements/domain/app_game_lists/app_game_lists.dart';
import 'package:achievements/domain/entities/pack.dart';
import 'package:flutter/material.dart';

class FiltersWidgetModel extends ChangeNotifier{
  var _packs = <Pack>[];
  List<Pack> get packs => _packs.toList();

  List<Pack> _toggledPacks = [];
  List<Pack> get toggledPacks => _toggledPacks.toList();

  FiltersWidgetModel({required gameIndex}) {
    _set(gameIndex);
  }

  _set(int gameIndex) {
    _packs = GameList.games[gameIndex].packs.values.toList();
    _toggledPacks = packs.where((pack) => pack.isToggled).toList();
  }

  void togglePack(Pack pack) {
    pack.isToggled = !pack.isToggled;
    print(_toggledPacks);

    if(_toggledPacks.contains(pack)) {
      _toggledPacks.remove(pack);
      print('${pack.name} was removed');
    } else {
      _toggledPacks.add(pack);
      print('${pack.name} was added');
    }

    notifyListeners();
  }

  void resetFilters() {
    _toggledPacks.clear();
    print('togglePackList was cleared');

    for(var pack in _packs) {
      pack.isToggled = false;
    }

    notifyListeners();
  }

  void closeEndDrawer(BuildContext context) {
    Navigator.of(context).pop();
  }

  // void _filterWishes(String key) {
  //   // for (var wish in widget.game.wishes) {
  //   //   if (wish.expansionPackKey == key) {
  //   //     widget.filteringList.add(wish);
  //   //   }
  //   // }
  // }

  // void _startFilter() {
  //   widget.filteringList.clear();
  //   if (widget.toggledPacks.isEmpty) {
  //     widget.filteringList.addAll(widget.game.wishes);
  //     setState(() {});
  //   }
  //
  //   for (var pack in widget.toggledPacks) {
  //     _filterWishes(pack.key);
  //   }
  //
  //   if (widget.onFilterButtonTap != null) {
  //     widget.onFilterButtonTap!();
  //   }
  // }
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
