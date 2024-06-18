import 'package:achievements/achievements_page/wish_list_builder.dart';
import 'package:achievements/resources/resources.dart';
import 'package:flutter/material.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({super.key, required this.gameId});

  final int gameId;

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  final expansionPackList = <ExpansionPackModel>[
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.theSims3Png_),
        name: 'Base Game',
        key: 'BG'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.worldAdventuresPng_),
        name: 'World Adventures',
        key: 'WA'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.AmbitionsPng_),
        name: 'Ambitions',
        key: 'A'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.LateNightPng_),
        name: 'Late Night',
        key: 'LN'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.PetsPng_),
        name: 'Pets',
        key: 'P'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.ShowtimePng_),
        name: 'Showtime',
        key: 'ST'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.SupernaturalPng_),
        name: 'Supernatural',
        key: 'SN'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.UniversityLifePng_),
        name: 'University Life',
        key: 'UL'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.IslandParadisePng_),
        name: 'Island Paradise',
        key: 'IP'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.IntoTheFuturePng_),
        name: 'Into the Future',
        key: 'ITF'),
  ];

  final List<WishModel> _wishes = [
    WishModel(
        imagePath: WishImages.ltwBecomeACreatureRobotCrossBreeder,
        name: 'Become a Creature-Robot Cross Breeder',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwBecomeAMasterThief,
        name: 'Become a Master Thief',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwBecomeASuperstarAthlete,
        name: 'Become a Superstar Athlete',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwBecomeAnAstronaut,
        name: 'Become an Astronaut',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwCelebratedFiveStarChef,
        name: 'Celebrated Five-Star Chef',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwCeoOfAMegaCorporation,
        name: 'CEO of a Mega-Corporation',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwChessLegend,
        name: 'Chess Legend',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwForensicSpecialistDynamicDnaProfiler,
        name: 'Forensic Specialist: Dynamic DNA Profiler',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwGoldDigger,
        name: 'Gold Digger',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwGoldenTongue2CGoldenFingers,
        name: 'Golden Tongue, Golden Fingers',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwHeartbreaker,
        name: 'Heartbreaker',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwHitMovieComposer,
        name: 'Hit Movie Composer',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwIllustriousAuthor,
        name: 'Illustrious Author',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwInternationalSuperSpy,
        name: 'International Super Spy',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwJackOfAllTrades,
        name: 'Jack of All Trades',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwLeaderOfTheFreeWorld,
        name: 'Leader of the Free World',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwLivingInTheLapOfLuxury,
        name: 'Living in the Lap of Luxury',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwMasterOfTheArts,
        name: 'Master of the Arts',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwPerfectMind2CPerfectBody,
        name: 'Perfect Mind, Perfect Body',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwPresentingThePerfectPrivateAquarium,
        name: 'Presenting the Perfect Private Aquarium',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwProfessionalAuthor,
        name: 'Professional Author',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwRenaissanceSim,
        name: 'Renaissance Sim',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwRockStar,
        name: 'Rock Star',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwStarNewsAnchor,
        name: 'Star News Anchor',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwSuperPopular,
        name: 'Super Popular',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwSurroundedByFamily,
        name: 'Surrounded by Family',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwSwimmingInCash,
        name: 'Swimming in Cash',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwTheCulinaryLibrarian,
        name: 'The Culinary Librarian',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwTheEmperorOfEvil,
        name: 'The Emperor of Evil',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwThePerfectGarden,
        name: 'The Perfect Garden',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwTheTinkerer,
        name: 'The Tinkerer',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwWorldRenownedSurgeon,
        name: 'World Renowned Surgeon',
        expansionPackKey: 'BG'),
    WishModel(
        imagePath: WishImages.ltwBottomlessNectarCellar,
        name: 'Bottomless Nectar Cellar',
        expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwGreatExplorer,
        name: 'Great Explorer',
        expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwMartialArtsMaster,
        name: 'Martial Arts Master',
        expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwPhysicalPerfection,
        name: 'Physical Perfection',
        expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwPrivateMuseum,
        name: 'Private Museum',
        expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwSeasonedTraveler,
        name: 'Seasoned Traveler',
        expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwVisionary,
        name: 'Visionary',
        expansionPackKey: 'WA'),
    WishModel(
        imagePath: WishImages.ltwWorldClassGallery,
        name: 'World-Class Gallery',
        expansionPackKey: 'WA'),
  ];

  List<WishModel> _flagWishes = [];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _filterWishes(String key) {
    for (var wish in _wishes) {
      print('start checking wishes in $key');
      if (wish.expansionPackKey == key) {
        _flagWishes.add(wish);
        print('${wish.name} was added to flag wishes');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    print('flagWishes = wishes');
    _flagWishes = _wishes;
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

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
                  'Filter menu',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  runSpacing: 5,
                  children: [
                    for (var pack in expansionPackList)
                      ExpansionPackButton(
                        pack: pack,
                      ),
                  ],
                ),
                FilledButton(
                  onPressed: () {
                    _flagWishes.clear();
                    print('flag wishes was cleared');
                    print('packsToggledList length is ${_ExpansionPackButtonState().packsToggledList.length}');
                    for (var pack
                        in _ExpansionPackButtonState().packsToggledList) {
                      print('call filter with ${pack.key}');
                      _filterWishes(pack.key);
                    }

                    //_closeEndDrawer();
                    setState(() {});
                  },
                  child: const Text('Filter wishes'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ExpansionPackModel {
  final Image image;
  final String name;
  final String key;

  ExpansionPackModel(
      {required this.image, required this.name, required this.key});
}

class ExpansionPackButton extends StatefulWidget {
  const ExpansionPackButton({super.key, required this.pack});

  final ExpansionPackModel pack;

  @override
  State<ExpansionPackButton> createState() => _ExpansionPackButtonState();
}

class _ExpansionPackButtonState extends State<ExpansionPackButton> {
  final packsToggledList = <ExpansionPackModel>[];
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    final toggleBorderStyle = WidgetStateProperty.all(
      CircleBorder(
        side: BorderSide(
          width: 2.0,
          color: Colors.deepPurple[500]!,
        ),
      ),
    );

    return SizedBox(
      width: 83,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FilledButton.icon(
            onPressed: () {
              _isToggled = !_isToggled;
              if (_isToggled)
                {
                  packsToggledList.add(widget.pack);
                  print('${widget.pack.name} added to packsToggledList');
                  for (var e in packsToggledList) {
                    print(e.name);
                  }
                }
              else {
                packsToggledList.remove(widget.pack);
                print('${widget.pack.name} was removed to packsToggledList');
                for (var e in packsToggledList) {
                  print(e.name);
                }
              }

              print('set state in FilledButton');
              setState(() {});
            },
            clipBehavior: Clip.hardEdge,
            label: widget.pack.image,
            style: ButtonStyle(
                fixedSize: WidgetStateProperty.all(
                  const Size.fromRadius(35),
                ),
                overlayColor: WidgetStateProperty.all(Colors.black12),
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                shape: _isToggled ? toggleBorderStyle : null),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            maxLines: 2,
            widget.pack.name,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}


