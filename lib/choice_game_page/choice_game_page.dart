import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

enum _OnTapGame { none, theSimsTwo, theSimsThree, theSimsFour }

class ChoiceGamePage extends StatefulWidget {
  const ChoiceGamePage({super.key});

  @override
  State<ChoiceGamePage> createState() => _ChoiceGamePageState();
}

class _ChoiceGamePageState extends State<ChoiceGamePage> {
  _OnTapGame _currentGame = _OnTapGame.none;

  Color changeSelectGameColor(_OnTapGame selectedGame) {
    if (_currentGame == selectedGame) return const Color(0xff4e6685);
    return Colors.transparent;
  }

  void _selectGame(_OnTapGame selectedGame) {
    setState(() {
      _currentGame = selectedGame;
      Navigator.of(context).pushReplacementNamed('/main_page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF748CAB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF748CAB),
        centerTitle: true,
        title: Text('Select the game',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          GameCardWidget(
            color: changeSelectGameColor(_OnTapGame.theSimsTwo),
            selectedGame: _OnTapGame.theSimsTwo,
            imagePath: AppImages.theSims2Logo,
            onTapActions: () => _selectGame(_OnTapGame.theSimsTwo),
          ),
          GameCardWidget(
            color: changeSelectGameColor(_OnTapGame.theSimsThree),
            selectedGame: _OnTapGame.theSimsThree,
            imagePath: AppImages.theSims3Logo,
            onTapActions: () => _selectGame(_OnTapGame.theSimsThree),
          ),
          GameCardWidget(
            color: changeSelectGameColor(_OnTapGame.theSimsFour),
            selectedGame: _OnTapGame.theSimsFour,
            imagePath: AppImages.sims4LogoPrimaryWhiteRgbTransparent1,
            onTapActions: () => _selectGame(_OnTapGame.theSimsFour),
          ),
        ],
      ),
    );
  }
}

class GameCardWidget extends StatelessWidget {
  const GameCardWidget(
      {super.key,
      required this.color,
      required this.selectedGame,
      required this.imagePath,
      this.onTapActions});

  final Color color;
  final String imagePath;
  final _OnTapGame selectedGame;
  final Function()? onTapActions;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapActions,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: color,
        ),
        child: Image(
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}
