part of 'achievement_page.dart';

class AchievementsPageWidget extends StatefulWidget {
  const AchievementsPageWidget({super.key, required this.gameIndex});

  final int gameIndex;

  @override
  State<AchievementsPageWidget> createState() => _AchievementsPageWidgetState();
}

class _AchievementsPageWidgetState extends State<AchievementsPageWidget> {
  final List<Wish> _displayedWishes = [];
  final List<ExpansionPackModel> _toggledPacks = [];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Game? _selectedGame;

  Game _getSelectedGame() {
    //final selectedGameId = widget.gameId;
    // final gameList =
        // GameList.games.where((game) => game.id == selectedGameId).toList();

    // if (gameList.isNotEmpty) {
    //   return gameList[0];
    // }

    throw Exception('Can\'t get the selected game');
  }

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _refreshPage(bool isOpen) {
    if (_toggledPacks.isEmpty && !isOpen) {
      _displayedWishes.clear();
      //_displayedWishes.addAll(_selectedGame!.wishes);
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    // _selectedGame = _getSelectedGame();
    //
    // if(_selectedGame != null) {
    //   _selectedGame!.completedWishes = [];
    //   _displayedWishes.addAll(_selectedGame!.wishes);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        // actions: [
        //   ChangeTheGameMenuAnchor(
        //     game: _selectedGame!,
        //   ),
        //   IconButton(
        //     onPressed: _openEndDrawer,
        //     icon: const Icon(
        //       Icons.tune,
        //     ),
        //     iconSize: 30,
        //   ),
        // ],
      ),
      // body: WishListBuilder(
      //   wishList: _displayedWishes,
      // ),
      // endDrawer: SafeArea(
      //   child: FilterMenuWidget(
      //     filteringList: _displayedWishes,
      //     toggledPacks: _toggledPacks,
      //     game: _selectedGame!,
      //     onFilterButtonTap: () {
      //       setState(() {});
      //     },
      //   ),
      // ),
      onEndDrawerChanged: (isOpen) {
        _refreshPage(isOpen);
      },
    );
  }
}

