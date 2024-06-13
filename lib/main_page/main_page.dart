import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class Game {
  final int id;
  final String name;
  final String imageName;

  Game({
    required this.id,
    required this.name,
    required this.imageName,
  });
}

class GameListPage extends StatefulWidget {
  const GameListPage({super.key});

  @override
  State<GameListPage> createState() => _GameListPageState();
}

class _GameListPageState extends State<GameListPage> {
  int? _currentGameId = null;

  List<Game> _games = <Game>[
    Game(
      id: 2,
      name: 'The Sims 2',
      imageName: AppImages.theSims2Logo,
    ),
    Game(
      id: 3,
      name: 'The Sims 3',
      imageName: AppImages.theSims3Logo,
    ),
    Game(
      id: 4,
      name: 'The Sims 4',
      imageName: AppImages.sims4LogoPrimaryWhiteRgbTransparent1,
    ),
  ];

  void _onGameTap(int index) {
    _currentGameId = _games[index].id;
    Navigator.of(context)
        .pushNamed('/main_page/achievements_page', arguments: _currentGameId);
  }

  // Color changeSelectGameColor(int selectedGameId) {
  //   if (_currentGameId == selectedGameId) return const Color(0xff4e6685);
  //   return Colors.transparent;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF748CAB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF748CAB),
        shape: LinearBorder.bottom(
          size: 0.9,
          side: const BorderSide(
            color: Color(0xff4e6685),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Select the game',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: GridView.builder(
        itemCount: _games.length,
        itemBuilder: (BuildContext context, int index) {
          final game = _games[index];
          return GameCard(
            game: game,
            onTapActions: () => {_onGameTap(index)},
            //color: changeSelectGameColor(game.id),
          );
        },
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard({super.key, this.onTapActions, required this.game});

  //final Color color;
  final Game game;
  final Function()? onTapActions;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapActions,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Image(
          image: AssetImage(game.imageName),
        ),
      ),
    );
  }
}
