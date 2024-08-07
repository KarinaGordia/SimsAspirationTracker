import 'package:achievements/app_game_lists/app_game_lists.dart';
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

  WishesWidgetModel({required this.configuration}) {
    _game = GameList.games[configuration.gameIndex];
    _box = BoxManager.instance.openAppBox();
    _getWishesFromPacks();
  }

  Future<void> _getWishesFromPacks() async {
    // final keys = (await _box).keys;
    // await (await _box).deleteAll(keys);
    // print('box ${(await _box).name} was opened');
    // final completedWishesNames = (await _box).values.toList();
    final packs = _game.packs.values.toList();
    for(var pack in packs) {
      _wishes.addAll(pack.wishes);
    }

   await _readCompletedWishes();
    for (var wishName in _completedWishesNames) {
      _wishes[wishName]?.isCompleted = true;
    }

    notifyListeners();
  }

  Future<void> _readCompletedWishes() async {
    print('${Hive.isBoxOpen('completed_wishes_box')}');

    final box = await _box;
    print('${box.keys}');
    print('${box.values}');
    if(box.containsKey(_game.key)) {
      _completedWishesNames = box.get(_game.key)!.toList();
    }
  }

  void filterWishes(List<Pack> packs) {
    if(packs.isEmpty) {
      packs = _game.packs.values.toList();
    }

    _wishes.clear();
    for(var pack in packs) {
      _wishes.addAll(pack.wishes);
    }

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

  void completeWish(Wish wish)  {
    wish.isCompleted = !wish.isCompleted;

    if(_completedWishesNames.contains(wish.name)) {
      _completedWishesNames.remove(wish.name);
    } else {
      _completedWishesNames.add(wish.name);
    }

    _saveWishes(_game.key);
    notifyListeners();
  }

  Future<void> _saveWishes(String gameKey) async {
    final box = await _box;
    await box.put(gameKey, _completedWishesNames);
    print('${box.keys}');
    print('${box.values}');
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await BoxManager.instance.closeBox((await _box));
  }
}

class WishesWidgetModelProvider extends InheritedNotifier {
  final WishesWidgetModel model;
  const WishesWidgetModelProvider ({
    super.key,
    required this.model,
    required super.child,
  }) : super(notifier: model);

  static WishesWidgetModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<WishesWidgetModelProvider>();
  }

    static WishesWidgetModelProvider? read(BuildContext context) {
    final widget = context.getElementForInheritedWidgetOfExactType<WishesWidgetModelProvider>()?.widget;
    return widget is WishesWidgetModelProvider ? widget : null;
  }

}
