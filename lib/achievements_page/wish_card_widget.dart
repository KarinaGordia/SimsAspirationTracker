import 'package:achievements/app_game_lists/app_game_lists.dart';
import 'package:achievements/models/models.dart';
import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class WishCardWidget extends StatelessWidget {
  const WishCardWidget({super.key, required this.wish});

  final WishModel wish;

  Image _getExpansionPackImage() {
    if( ExpansionPackList.theSimsThreeExpansionPacks.containsKey(wish.expansionPackKey)) {
      return ExpansionPackList.theSimsThreeExpansionPacks[wish.expansionPackKey]!.image;
    }

    return Image.asset(AppImages.build24dpFill0Wght400Grad0Opsz24);
  }

  Color changeCardColor() {
    return const Color(0xFFE1B047); //0xFFD1CBC1
  }

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      color: Color(0xFFD1CBC1),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          wish.isCompleted = !wish.isCompleted;
        },
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 5,
              width: 25,
              height: 25,
              child: _getExpansionPackImage(),
            ),
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Image(
                    image: AssetImage(wish.imagePath),
                    width: 54,
                    height: 54,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.white24,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Center(
                        child: Text(
                          wish.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 13.5),
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
