import 'package:achievements/achievements_page/achievements_page_lists.dart';
import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class WishListBuilder extends StatelessWidget {
  const WishListBuilder({super.key, required this.wishList});

  final List<WishModel> wishList;

  @override
  Widget build(BuildContext context) {
    print('wish list builder start');
    return GridView.builder(
      itemCount: wishList.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 190,
        childAspectRatio: 0.85,
      ),
      itemBuilder: (BuildContext context, int index) =>
          WishCardWidget(wish: wishList[index]),
    );
  }
}

class WishCardWidget extends StatelessWidget {
  const WishCardWidget({super.key, required this.wish});

  final WishModel wish;

  Image _getExpansionPackImage() {
    if( AchievementPageLists.expansionPacks.containsKey(wish.expansionPackKey)) {
      return AchievementPageLists.expansionPacks[wish.expansionPackKey]!.image;
    }



    return Image.asset(AppImages.build24dpFill0Wght400Grad0Opsz24);
  }

  @override
  Widget build(BuildContext context) {
    const goldColor = Color(0xFFE1B047); //0xFFD1CBC1
    return Card.outlined(
      color: Color(0xFFD1CBC1),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
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

class WishModel {
  final String imagePath;
  final String name;
  final String expansionPackKey;

  WishModel({
    required this.imagePath,
    required this.name,
    required this.expansionPackKey,
  });
}
