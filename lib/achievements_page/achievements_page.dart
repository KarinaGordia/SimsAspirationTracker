import 'package:achievements/achievements_page/achievements_page_lists.dart';
import 'package:achievements/achievements_page/filter_menu.dart';
import 'package:achievements/achievements_page/wish_list_builder.dart';
import 'package:flutter/material.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({super.key, required this.gameId});

  final int gameId;

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  final List<WishModel> _flagWishes = [];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
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
          onFilterButtonTap: () {
            _closeEndDrawer();
            setState(() {});
          },
        ),
      ),
    );
  }
}
