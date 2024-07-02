import 'package:achievements/achievements_page/achievements_page_lists.dart';
import 'package:achievements/achievements_page/filter_menu/filter_menu.dart';
import 'package:achievements/achievements_page/wish_list_builder.dart';
import 'package:flutter/material.dart';

import 'filter_menu/expansion_pack_model.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({super.key, required this.gameId});

  final int gameId;

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  final List<WishModel> _flagWishes = [];
  final List<ExpansionPackModel> _toggledPacks = [];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  SampleItem? selectedMenu;

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  void initState() {
    super.initState();
    _flagWishes.addAll(AchievementPageLists.wishes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          MenuAnchor(
            builder:
                (BuildContext context, MenuController controller, Widget? child) {
              return IconButton(
                onPressed: () {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                },
                icon: const Icon(Icons.more_horiz),
                tooltip: 'Change the game',
              );
            },
            alignmentOffset: const Offset(-24, 0),
            style: const MenuStyle(
              //alignment: Alignment.bottomLeft,
            ),
            menuChildren: List<MenuItemButton>.generate(
              3,
                  (int index) => MenuItemButton(
                onPressed: () =>
                    setState(() => selectedMenu = SampleItem.values[index]),
                child: Text('The Sims ${index + 2}'),
              ),
            ),
          ),
          IconButton(
            onPressed: _openEndDrawer,
            icon: const Icon(
              Icons.tune,
            ),
            iconSize: 30,
          ),
        ],
      ),
      body: WishListBuilder(
        wishList: _flagWishes,
      ),
      endDrawer: SafeArea(
        child: FilterMenu(
          filteringList: _flagWishes,
          toggledPacks: _toggledPacks,
          onFilterButtonTap: () {
            setState(() {});
          },
        ),
      ),
      onEndDrawerChanged: (isOpen) {
        _refreshPage(isOpen);
      },
    );
  }

  void _refreshPage(bool isOpen) {
    if (_toggledPacks.isEmpty && !isOpen) {
      _flagWishes.clear();
      _flagWishes.addAll(AchievementPageLists.wishes);
      setState(() {});
    }
  }
}
