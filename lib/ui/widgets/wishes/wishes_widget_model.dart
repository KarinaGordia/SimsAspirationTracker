import 'package:achievements/domain/app_game_lists/app_game_lists.dart';
import 'package:achievements/domain/data_provider/box_manager.dart';
import 'package:achievements/domain/entities/wish.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/entities/game.dart';
import '../../../domain/entities/pack.dart';

class WishesWidgetModel extends ChangeNotifier {
  WishesWidgetConfiguration configuration;
  late final Future<Box<List<String>>> _box;
  late final Game _game;
  final _allWishes = <String, Wish>{};
  final _displayedWishes = <String, Wish>{};
  List<String> _completedWishesNames = [];
  int filterIndex = 0;

  List<Wish> get wishes => _displayedWishes.values.toList();

  Map<String, Pack> get packs => _game.packs;

  WishesWidgetModel({required this.configuration}) {
    _setup();
  }

  Future<void> _setup() async {
    _game = GameList.games[configuration.gameIndex];
    _box = BoxManager.instance.openAppBox();
    _getWishesForSetup();
  }

  Future<void> _getWishesForSetup() async {
    // final keys = (await _box).keys;
    // await (await _box).deleteAll(keys);
    // print('box ${(await _box).name} was opened');
    // final completedWishesNames = (await _box).values.toList();
    //final packs = _game.packs.values.toList();

    if(_allWishes.isEmpty) {
      for (var pack in packs.values) {
        _allWishes.addAll(pack.wishes);
      }
    }

    _displayedWishes.addEntries(_allWishes.entries);

    await _readCompletedWishes();
    for (var wishName in _completedWishesNames) {
      _displayedWishes[wishName]?.isCompleted = true;
    }

    notifyListeners();
  }

  void filterWishes({List<String>? selectedExpansionPacks, required int statusIndex,}) {
    bool? showFulfilled;

    switch(statusIndex) {
      case 1: showFulfilled = true;
      case 2: showFulfilled = false;
    }

    _displayedWishes.clear();
    _displayedWishes.addEntries(_allWishes.entries.where((pair) {
      var wish = pair.value;
      final matchesExpansionPack = selectedExpansionPacks == null ||
          selectedExpansionPacks.isEmpty ||
          selectedExpansionPacks.contains(wish.packKey);
      final matchesStatus = showFulfilled == null ||
          wish.isCompleted == showFulfilled;

      return matchesExpansionPack && matchesStatus;
    }).toList());

    filterIndex = statusIndex;
    notifyListeners();
  }

  void resetFilters() {
    _displayedWishes.clear();
    _displayedWishes.addEntries(_allWishes.entries);

    filterIndex = 0;
    notifyListeners();
  }

  void completeWish(Wish wish) {
    wish.isCompleted = !wish.isCompleted;

    if (_completedWishesNames.contains(wish.name)) {
      _completedWishesNames.remove(wish.name);
    } else {
      _completedWishesNames.add(wish.name);
    }

    _saveWishes(_game.key);
    notifyListeners();
  }

  Future<void> _readCompletedWishes() async {
    final box = await _box;
    if (box.containsKey(_game.key)) {
      _completedWishesNames = box.get(_game.key)!.toList();
    }
  }

  Future<void> _saveWishes(String gameKey) async {
    final box = await _box;
    if(box.isOpen) {
      await box.put(gameKey, _completedWishesNames);
    }
  }

  void openEndDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
    scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await BoxManager.instance.closeBox((await _box));
  }
}

class WishesWidgetModelProvider extends InheritedNotifier {
  final WishesWidgetModel model;

  const WishesWidgetModelProvider({
    super.key,
    required this.model,
    required super.child,
  }) : super(notifier: model);

  static WishesWidgetModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<
        WishesWidgetModelProvider>();
  }

  static WishesWidgetModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<WishesWidgetModelProvider>()
        ?.widget;
    return widget is WishesWidgetModelProvider ? widget : null;
  }

}
