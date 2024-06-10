import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

enum _OnTapGame { none, theSimsThree, theSimsFour }

class ChoiceGamePage extends StatefulWidget {
  ChoiceGamePage({super.key});

  @override
  State<ChoiceGamePage> createState() => _ChoiceGamePageState();
}

class _ChoiceGamePageState extends State<ChoiceGamePage> {
  _OnTapGame _chosenGame = _OnTapGame.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color(0xFF748CAB),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _chosenGame = _OnTapGame.theSimsThree;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: _chosenGame == _OnTapGame.theSimsThree
                        ? Color(0xff4e6685)
                        : Colors.transparent,
                  ),
                  child: Image(
                    image: AssetImage(AppImages.theSims3Logo),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _chosenGame = _OnTapGame.theSimsFour;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: _chosenGame == _OnTapGame.theSimsFour
                        ? Color(0xff4e6685)
                        : Colors.transparent,
                  ),
                  child: Image(
                    image: AssetImage(AppImages.sims4LogoPrimaryWhiteRgbTransparent1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

