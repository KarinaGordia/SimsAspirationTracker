import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class AchievementsPage extends StatefulWidget {
  AchievementsPage({super.key, required this.gameId});

  final int gameId;

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  List<WishModel> wishes = [
    WishModel(
        imagePath: WishImages.ltwBecomeACreatureRobotCrossBreeder,
        wishName: 'Become a Creature-Robot Cross Breeder',
        id: 1),
    WishModel(
        imagePath: WishImages.ltwBecomeAMasterThief,
        wishName: 'Become a Master Thief',
        id: 2),
    WishModel(
        imagePath: WishImages.ltwBecomeASuperstarAthlete,
        wishName: 'Become a Superstar Athlete',
        id: 3),
    WishModel(
        imagePath: WishImages.ltwBecomeAnAstronaut,
        wishName: 'Become an Astronaut',
        id: 4),
    WishModel(
        imagePath: WishImages.ltwCelebratedFiveStarChef,
        wishName: 'Celebrated Five-Star Chef',
        id: 5),
    WishModel(
        imagePath: WishImages.ltwCeoOfAMegaCorporation,
        wishName: 'CEO of a Mega-Corporation',
        id: 6),
    WishModel(
        imagePath: WishImages.ltwChessLegend, wishName: 'Chess Legend', id: 7),
    WishModel(
        imagePath: WishImages.ltwForensicSpecialistDynamicDnaProfiler,
        wishName: 'Forensic Specialist: Dynamic DNA Profiler',
        id: 8),
    WishModel(
        imagePath: WishImages.ltwGoldDigger, wishName: 'Gold Digger', id: 9),
    WishModel(
        imagePath: WishImages.ltwGoldenTongue2CGoldenFingers,
        wishName: 'Golden Tongue, Golden Fingers',
        id: 10),
    WishModel(
        imagePath: WishImages.ltwHeartbreaker,
        wishName: 'Heartbreaker',
        id: 11),
    WishModel(
        imagePath: WishImages.ltwHitMovieComposer,
        wishName: 'Hit Movie Composer',
        id: 12),
    WishModel(
        imagePath: WishImages.ltwIllustriousAuthor,
        wishName: 'Illustrious Author',
        id: 13),
    WishModel(
        imagePath: WishImages.ltwInternationalSuperSpy,
        wishName: 'International Super Spy',
        id: 14),
    WishModel(
        imagePath: WishImages.ltwJackOfAllTrades,
        wishName: 'Jack of All Trades',
        id: 15),
    WishModel(
        imagePath: WishImages.ltwLeaderOfTheFreeWorld,
        wishName: 'Leader of the Free World',
        id: 16),
    WishModel(
        imagePath: WishImages.ltwLivingInTheLapOfLuxury,
        wishName: 'Living in the Lap of Luxury',
        id: 17),
    WishModel(
        imagePath: WishImages.ltwMasterOfTheArts,
        wishName: 'Master of the Arts',
        id: 18),
    WishModel(
        imagePath: WishImages.ltwPerfectMind2CPerfectBody,
        wishName: 'Perfect Mind, Perfect Body',
        id: 19),
    WishModel(
        imagePath: WishImages.ltwPresentingThePerfectPrivateAquarium,
        wishName: 'Presenting the Perfect Private Aquarium',
        id: 20),
    WishModel(
        imagePath: WishImages.ltwProfessionalAuthor,
        wishName: 'Professional Author',
        id: 21),
    WishModel(
        imagePath: WishImages.ltwRenaissanceSim,
        wishName: 'Renaissance Sim',
        id: 22),
    WishModel(imagePath: WishImages.ltwRockStar, wishName: 'Rock Star', id: 23),
    WishModel(
        imagePath: WishImages.ltwStarNewsAnchor,
        wishName: 'Star News Anchor',
        id: 24),
    WishModel(
        imagePath: WishImages.ltwSuperPopular,
        wishName: 'Super Popular',
        id: 25),
    WishModel(
        imagePath: WishImages.ltwSurroundedByFamily,
        wishName: 'Surrounded by Family',
        id: 26),
    WishModel(
        imagePath: WishImages.ltwSwimmingInCash,
        wishName: 'Swimming in Cash',
        id: 27),
    WishModel(
        imagePath: WishImages.ltwTheCulinaryLibrarian,
        wishName: 'The Culinary Librarian',
        id: 28),
    WishModel(
        imagePath: WishImages.ltwTheEmperorOfEvil,
        wishName: 'The Emperor of Evil',
        id: 29),
    WishModel(
        imagePath: WishImages.ltwThePerfectGarden,
        wishName: 'The Perfect Garden',
        id: 30),
    WishModel(
        imagePath: WishImages.ltwTheTinkerer, wishName: 'The Tinkerer', id: 31),
    WishModel(
        imagePath: WishImages.ltwWorldRenownedSurgeon,
        wishName: 'World Renowned Surgeon',
        id: 32),
  ];

  List<WishModel> _flagWishes = [];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _filterWishes(List<int> idList) {
    if (idList.isNotEmpty) {
      Iterable<WishModel> tempList = [];
      for (int id in idList) {
        tempList = wishes.where((WishModel wish) {
          return wish.id == id;
        });
      }

      _flagWishes = tempList.toList();
    } else {
      _flagWishes = wishes;
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _flagWishes = wishes;
  }

  // void _closeEndDrawer() {
  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _openEndDrawer,
            icon: const Icon(
              Icons.tune,
            ),
            iconSize: 30,
          ),
        ],
      ),
      body: WishListBuilder(wishList: _flagWishes,),
      endDrawer: SafeArea(
        child: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Achievement filter menu',
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  onPressed: () => _filterWishes([1,4,2]),
                  icon: Icon(Icons.flag_circle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WishListBuilder extends StatelessWidget {
  const WishListBuilder({super.key, required this.wishList});

  final List<WishModel> wishList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: wishList.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
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

  @override
  Widget build(BuildContext context) {
    const goldColor = Color(0xFFE1B047);
    return Card.outlined(
      color: Color(0xFFD1CBC1),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Column(
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
                      wish.wishName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 13.5),
                    ),
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

class WishModel {
  final int id;
  final String imagePath;
  final String wishName;

  WishModel(
      {required this.imagePath, required this.id, required this.wishName});
}
