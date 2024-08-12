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
  final _wishes = <String, Wish>{};
  List<String> _completedWishesNames = [];
  late final Game _game;

  List<Wish> get wishes => _wishes.values.toList();

  Map<String, Pack> get packs => _game.packs;

  WishesWidgetModel({required this.configuration}) {
    print('setup in constructor');
    _setup();
  }

  Future<void> _setup() async {
    _game = GameList.games[configuration.gameIndex];
    print('is box open in constructor: ${Hive.isBoxOpen(
        'completed_wishes_box')}');
    _box = BoxManager.instance.openAppBox();
    print('is box open in constructor: ${Hive.isBoxOpen(
        'completed_wishes_box')}');
    _getWishesFromPacks();
  }

  Future<void> _getWishesFromPacks() async {
    // final keys = (await _box).keys;
    // await (await _box).deleteAll(keys);
    // print('box ${(await _box).name} was opened');
    // final completedWishesNames = (await _box).values.toList();
    final packs = _game.packs.values.toList();
    for (var pack in packs) {
      _wishes.addAll(pack.wishes);
    }

    await _readCompletedWishes();
    for (var wishName in _completedWishesNames) {
      _wishes[wishName]?.isCompleted = true;
    }

    notifyListeners();
  }

  void filterByCompletionStatus() {
    final completedWishes = _wishes.values.where((wish) => wish.isCompleted)
        .toList();
    _wishes.clear();
    for(var wish in completedWishes) {
      _wishes[wish.name] = wish;
    }

    notifyListeners();
  }

  void filterByPack(List<Pack> packs) {
    if (packs.isEmpty) {
      packs = _game.packs.values.toList();
    }

    _wishes.clear();
    for (var pack in packs) {
      _wishes.addAll(pack.wishes);
    }

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

  // void _refreshPage(bool isOpen) {
  //   if (_toggledPacks.isEmpty && !isOpen) {
  //     _displayedWishes.clear();
  //     //_displayedWishes.addAll(_selectedGame!.wishes);
  //     setState(() {});
  //   }
  // }

  void openEndDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
    scaffoldKey.currentState!.openEndDrawer();
  }

  Future<void> _readCompletedWishes() async {
    print('is box open _readCompletedWishes: ${Hive.isBoxOpen(
        'completed_wishes_box')}');
    final box = await _box;
    print('is box open _readCompletedWishes: ${Hive.isBoxOpen(
        'completed_wishes_box')}');
    print('${box.keys}');
    print('${box.values}');
    if (box.containsKey(_game.key)) {
      _completedWishesNames = box.get(_game.key)!.toList();
    }
  }

  Future<void> _saveWishes(String gameKey) async {
    print('is box open in _saveWishes: ${Hive.isBoxOpen(
        'completed_wishes_box')}');
    final box = await _box;
    await box.put(gameKey, _completedWishesNames);
    print('${box.keys}');
    print('${box.values}');
  }

  @override
  Future<void> dispose() async {
    print('call dispose in WishesWidgetModel');
    super.dispose();
    print('is box open in dispose: ${Hive.isBoxOpen('completed_wishes_box')}');
    await BoxManager.instance.closeBox((await _box));
    print('is box open in dispose: ${Hive.isBoxOpen('completed_wishes_box')}');
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
