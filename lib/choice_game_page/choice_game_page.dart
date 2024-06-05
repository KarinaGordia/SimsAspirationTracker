import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class ChoiceGamePage extends StatelessWidget {
  const ChoiceGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF748CAB),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Image(
                image: AssetImage(AppImages.theSims3Logo),
                height: 350,
                width: 350,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image(
                image:
                    AssetImage(AppImages.sims4LogoPrimaryWhiteRgbTransparent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
