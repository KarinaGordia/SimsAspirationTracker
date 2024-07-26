import 'package:achievements/app_game_lists/app_game_lists.dart';
import 'package:achievements/models/models.dart';
import 'package:flutter/material.dart';

class GameListPage extends StatefulWidget {
  const GameListPage({super.key});

  @override
  State<GameListPage> createState() => _GameListPageState();
}

class _GameListPageState extends State<GameListPage> {
  void _onGameTap(int index) {
    final id = GameList.games[index].id;
    Navigator.of(context)
        .pushReplacementNamed('/main_page/achievements_page', arguments: id);
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
        itemCount: GameList.games.length,
        itemBuilder: (BuildContext context, int index) {
          final game = GameList.games[index];
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
  final GameModel game;
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
