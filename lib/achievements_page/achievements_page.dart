import 'package:achievements/achievements_page/change_the_game_menu.dart';
import 'package:achievements/achievements_page/filter_menu/filter_menu.dart';
import 'package:achievements/achievements_page/wish_list_builder.dart';
import 'package:achievements/app_game_lists/app_game_lists.dart';
import 'package:achievements/models/models.dart';
import 'package:flutter/material.dart';


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

  GameModel _getSelectedGameModel() {
    final selectedGameId = widget.gameId;
    final gameList =
        GameList.games.where((game) => game.id == selectedGameId).toList();

    if (gameList.isNotEmpty) {
      return gameList[0];
    }

    throw Exception('Can\'t get the selected game');
  }

  GameModel? selectedGame;
  // SampleItem? selectedMenu;

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  void initState() {
    super.initState();
    selectedGame = _getSelectedGameModel();

    if(selectedGame != null) {
      _flagWishes.addAll(selectedGame!.wishes);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          ChangeTheGameMenuAnchor(
            game: selectedGame!,
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
          game: selectedGame!,
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
      _flagWishes.addAll(selectedGame!.wishes);
      setState(() {});
    }
  }
}


