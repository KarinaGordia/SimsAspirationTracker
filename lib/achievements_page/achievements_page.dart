import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class AchievementsPage extends StatefulWidget {
  AchievementsPage({super.key, required this.gameId});

  final int gameId;

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {

  Map<String, String> expansionPacks = {
    'BG' : 'Base Game',
    'WA' : 'World Adventures',
    'A' : 'Ambitions',
    'LN' : 'Late Night',
    'P' : 'Pets',
    'ST' : 'Showtime',
    'SN' : 'Supernatural',
    'UL' : 'University Life',
    'IP' : 'Island Paradise',
    'ITF' : 'Into the Future',
  };

  List<WishModel> wishes = [
    WishModel(
        imagePath: WishImages.ltwBecomeACreatureRobotCrossBreeder,
        wishName: 'Become a Creature-Robot Cross Breeder',
        id: 1, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwBecomeAMasterThief,
        wishName: 'Become a Master Thief',
        id: 2, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwBecomeASuperstarAthlete,
        wishName: 'Become a Superstar Athlete',
        id: 3, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwBecomeAnAstronaut,
        wishName: 'Become an Astronaut',
        id: 4, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwCelebratedFiveStarChef,
        wishName: 'Celebrated Five-Star Chef',
        id: 5, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwCeoOfAMegaCorporation,
        wishName: 'CEO of a Mega-Corporation',
        id: 6, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwChessLegend, wishName: 'Chess Legend', id: 7, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwForensicSpecialistDynamicDnaProfiler,
        wishName: 'Forensic Specialist: Dynamic DNA Profiler',
        id: 8, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwGoldDigger, wishName: 'Gold Digger', id: 9, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwGoldenTongue2CGoldenFingers,
        wishName: 'Golden Tongue, Golden Fingers',
        id: 10, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwHeartbreaker,
        wishName: 'Heartbreaker',
        id: 11, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwHitMovieComposer,
        wishName: 'Hit Movie Composer',
        id: 12, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwIllustriousAuthor,
        wishName: 'Illustrious Author',
        id: 13, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwInternationalSuperSpy,
        wishName: 'International Super Spy',
        id: 14, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwJackOfAllTrades,
        wishName: 'Jack of All Trades',
        id: 15, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwLeaderOfTheFreeWorld,
        wishName: 'Leader of the Free World',
        id: 16, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwLivingInTheLapOfLuxury,
        wishName: 'Living in the Lap of Luxury',
        id: 17, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwMasterOfTheArts,
        wishName: 'Master of the Arts',
        id: 18, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwPerfectMind2CPerfectBody,
        wishName: 'Perfect Mind, Perfect Body',
        id: 19, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwPresentingThePerfectPrivateAquarium,
        wishName: 'Presenting the Perfect Private Aquarium',
        id: 20, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwProfessionalAuthor,
        wishName: 'Professional Author',
        id: 21, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwRenaissanceSim,
        wishName: 'Renaissance Sim',
        id: 22, expansionPackKey: 'BG'),
    WishModel(imagePath: WishImages.ltwRockStar, wishName: 'Rock Star', id: 23, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwStarNewsAnchor,
        wishName: 'Star News Anchor',
        id: 24, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwSuperPopular,
        wishName: 'Super Popular',
        id: 25, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwSurroundedByFamily,
        wishName: 'Surrounded by Family',
        id: 26, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwSwimmingInCash,
        wishName: 'Swimming in Cash',
        id: 27, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwTheCulinaryLibrarian,
        wishName: 'The Culinary Librarian',
        id: 28, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwTheEmperorOfEvil,
        wishName: 'The Emperor of Evil',
        id: 29, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwThePerfectGarden,
        wishName: 'The Perfect Garden',
        id: 30, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwTheTinkerer, wishName: 'The Tinkerer', id: 31, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwWorldRenownedSurgeon,
        wishName: 'World Renowned Surgeon',
        id: 32, expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwBottomlessNectarCellar,
        wishName: 'Bottomless Nectar Cellar',
        id: 32, expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwGreatExplorer,
        wishName: 'Great Explorer',
        id: 32, expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwMartialArtsMaster,
        wishName: 'Martial Arts Master',
        id: 32, expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwPhysicalPerfection,
        wishName: 'Physical Perfection',
        id: 32, expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwPrivateMuseum,
        wishName: 'Private Museum',
        id: 32, expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwSeasonedTraveler,
        wishName: 'Seasoned Traveler',
        id: 32, expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwVisionary,
        wishName: 'Visionary',
        id: 32, expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwWorldClassGallery,
        wishName: 'World-Class Gallery',
        id: 32, expansionPackKey: 'WA'),
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
      body: WishListBuilder(
        wishList: _flagWishes,
      ),
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
                Wrap(children: [
                  FilledButton(
                    onPressed: () => _filterWishes([1, 4, 2]),
                    child: Image.asset(ExpansionPacksImages.theSims3Png_),
                  ),
                  IconButton(
                    onPressed: () => _filterWishes([1, 4, 2]),
                    icon: Icon(Icons.flag_circle),
                  ),
                  IconButton(
                    onPressed: () => _filterWishes([1, 4, 2]),
                    icon: Icon(Icons.flag_circle),
                  ),
                  IconButton(
                    onPressed: () => _filterWishes([1, 4, 2]),
                    icon: Icon(Icons.flag_circle),
                  ),
                  IconButton(
                    onPressed: () => _filterWishes([1, 4, 2]),
                    icon: Icon(Icons.flag_circle),
                  ),
                  IconButton(
                    onPressed: () => _filterWishes([1, 4, 2]),
                    icon: Icon(Icons.flag_circle),
                  ),
                  IconButton(
                    onPressed: () => _filterWishes([1, 4, 2]),
                    icon: Icon(Icons.flag_circle),
                  ),
                  IconButton(
                    onPressed: () => _filterWishes([1, 4, 2]),
                    icon: Icon(Icons.flag_circle),
                  ),
                  IconButton(
                    onPressed: () => _filterWishes([1, 4, 2]),
                    icon: Icon(Icons.flag_circle),
                  ),
                ],),

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
  final String expansionPackKey;

  WishModel({
    required this.imagePath,
    required this.id,
    required this.wishName,
    required this.expansionPackKey,
  });
}
