import 'package:achievements/app_game_lists/app_game_lists.dart';
import 'package:achievements/models/models.dart';
import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class WishCardWidget extends StatefulWidget {
  const WishCardWidget({super.key, required this.wish});

  final WishModel wish;

  @override
  State<WishCardWidget> createState() => _WishCardWidgetState();
}

class _WishCardWidgetState extends State<WishCardWidget> {
  Image _getExpansionPackImage() {
    if( ExpansionPackList.theSimsThreeExpansionPacks.containsKey(widget.wish.expansionPackKey)) {
      return ExpansionPackList.theSimsThreeExpansionPacks[widget.wish.expansionPackKey]!.image;
    }

    return Image.asset(AppImages.build24dpFill0Wght400Grad0Opsz24);
  }

  Color getWishCardColor() {
    if(!widget.wish.isCompleted) {
      return const Color(0xFFD1CBC1);
    }

    return const Color(0xFFE1B047);
  }

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      color: getWishCardColor(),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          print('${widget.wish.name} is ${widget.wish.isCompleted ? 'not ' : ''}completed');
          widget.wish.isCompleted = !widget.wish.isCompleted;
          setState(() {});
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
                    image: AssetImage(widget.wish.imagePath),
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
                          widget.wish.name,
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
