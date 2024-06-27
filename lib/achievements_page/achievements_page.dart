import 'package:achievements/achievements_page/achievements_page_lists.dart';
import 'package:achievements/achievements_page/filter_menu/filter_menu.dart';
import 'package:achievements/achievements_page/wish_list_builder.dart';
import 'package:flutter/material.dart';

import 'filter_menu/expansion_pack_model.dart';

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

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  void initState() {
    super.initState();
    print('flagWishes = wishes');

    _flagWishes.addAll(AchievementPageLists.wishes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
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
        print('end drawer callback isOpen=$isOpen');
      },
    );
  }

  void _refreshPage(bool isOpen) {
    if(_toggledPacks.isEmpty && !isOpen){
      _flagWishes.clear();
      _flagWishes.addAll(AchievementPageLists.wishes);
      print('page was refreshed');
      print('_flagWishes.length ${_flagWishes.length}');
      setState(() {});
    }
  }
}
