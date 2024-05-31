import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  List<WishModel> wishes = [
    WishModel(
        imagePath: WishImages.ltwBecomeAnAstronaut,
        wishName: 'Become an Astronaut'),
    WishModel(
        imagePath: WishImages.ltwBecomeACreatureRobotCrossBreeder,
        wishName: 'Become a Creature-Robot Cross Breeder'),
    WishModel(
        imagePath: WishImages.ltwBecomeAMasterThief,
        wishName: 'Become a Master Thief'),
    WishModel(
        imagePath: WishImages.ltwBecomeASuperstarAthlete,
        wishName: 'Become a Superstar Athlete'),
    WishModel(
        imagePath: WishImages.ltwCelebratedFiveStarChef,
        wishName: 'Celebrated Five-Star Chef'),
    WishModel(
        imagePath: WishImages.ltwCeoOfAMegaCorporation,
        wishName: 'CEO of a Mega-Corporation'),
    WishModel(imagePath: WishImages.ltwChessLegend, wishName: 'Chess Legend'),
    WishModel(
        imagePath: WishImages.ltwForensicSpecialistDynamicDnaProfiler,
        wishName: 'Forensic Specialist: Dynamic DNA Profiler'),
    WishModel(imagePath: WishImages.ltwGoldDigger, wishName: 'Gold Digger'),
    WishModel(
        imagePath: WishImages.ltwGoldenTongue2CGoldenFingers,
        wishName: 'Golden Tongue, Golden Fingers'),
    WishModel(imagePath: WishImages.ltwHeartbreaker, wishName: 'Heartbreaker'),
    WishModel(
        imagePath: WishImages.ltwHitMovieComposer,
        wishName: 'Hit Movie Composer'),
    WishModel(
        imagePath: WishImages.ltwIllustriousAuthor,
        wishName: 'Illustrious Author'),
    WishModel(
        imagePath: WishImages.ltwInternationalSuperSpy,
        wishName: 'International Super Spy'),
    WishModel(
        imagePath: WishImages.ltwJackOfAllTrades,
        wishName: 'Jack of All Trades'),
    WishModel(
        imagePath: WishImages.ltwLeaderOfTheFreeWorld,
        wishName: 'Leader of the Free World'),
    WishModel(
        imagePath: WishImages.ltwLivingInTheLapOfLuxury,
        wishName: 'Living in the Lap of Luxury'),
    WishModel(
        imagePath: WishImages.ltwMasterOfTheArts,
        wishName: 'Master of the Arts'),
    WishModel(
        imagePath: WishImages.ltwPerfectMind2CPerfectBody,
        wishName: 'Perfect Mind, Perfect Body'),
    WishModel(
        imagePath: WishImages.ltwPresentingThePerfectPrivateAquarium,
        wishName: 'Presenting the Perfect Private Aquarium'),
    WishModel(
        imagePath: WishImages.ltwProfessionalAuthor,
        wishName: 'Professional Author'),
    WishModel(
        imagePath: WishImages.ltwRenaissanceSim, wishName: 'Renaissance Sim'),
    WishModel(imagePath: WishImages.ltwRockStar, wishName: 'Rock Star'),
    WishModel(
        imagePath: WishImages.ltwStarNewsAnchor, wishName: 'Star News Anchor'),
    WishModel(imagePath: WishImages.ltwSuperPopular, wishName: 'Super Popular'),
    WishModel(
        imagePath: WishImages.ltwSurroundedByFamily,
        wishName: 'Surrounded by Family'),
    WishModel(
        imagePath: WishImages.ltwSwimmingInCash, wishName: 'Swimming in Cash'),
    WishModel(
        imagePath: WishImages.ltwTheCulinaryLibrarian,
        wishName: 'The Culinary Librarian'),
    WishModel(
        imagePath: WishImages.ltwTheEmperorOfEvil,
        wishName: 'The Emperor of Evil'),
    WishModel(
        imagePath: WishImages.ltwThePerfectGarden,
        wishName: 'The Perfect Garden'),
    WishModel(imagePath: WishImages.ltwTheTinkerer, wishName: 'The Tinkerer'),
    WishModel(
        imagePath: WishImages.ltwWorldRenownedSurgeon,
        wishName: 'World Renowned Surgeon'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: wishes.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200),
          itemBuilder: (BuildContext context, int index) =>
              WishCard(wish: wishes[index]),
        ),
      ),
    );
  }
}

class WishCard extends StatelessWidget {
  const WishCard({super.key, required this.wish});

  final WishModel wish;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image(
              image: AssetImage(wish.imagePath),
              width: 54,
              height: 54,
            ),
          ),
          Expanded(flex: 1, child: Text(wish.wishName, textAlign: TextAlign.center,),),
        ],
      ),
    );
    GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.red,
        title: Text(
          wish.wishName,
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.visible,
        ),
      ),
      child: Image(
        image: AssetImage(wish.imagePath),
        width: 54,
        height: 54,
      ),
      // child: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Image(
      //         image: AssetImage(wish.imagePath),
      //         width: 54,
      //         height: 54,
      //       ),
      //       Text(
      //         wish.wishName, textAlign: TextAlign.center,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class WishModel {
  final String imagePath;
  final String wishName;

  WishModel({required this.imagePath, required this.wishName});
}
