import 'package:achievements/achievements_page/filter_menu.dart';
import 'package:achievements/achievements_page/wish_list_builder.dart';
import 'package:flutter/material.dart';

import '../resources/resources.dart';

class AchievementPageLists {
  AchievementPageLists._();

  static final wishes = <WishModel>[
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
    WishModel(
        imagePath: WishImages.ltwDescendantOfDaVinci,
        name: 'Descendant of da Vinci',
        expansionPackKey: 'A'),
    WishModel(
        imagePath: WishImages.ltwFashionPhenomenon,
        name: 'Fashion Phenomenon',
        expansionPackKey: 'A'),
    WishModel(
        imagePath: WishImages.ltwFirefighterSuperHero,
        name: 'Firefighter Super Hero',
        expansionPackKey: 'A'),
    WishModel(
        imagePath: WishImages.ltwHomeDesignHotshot,
        name: 'Home Design Hotshot',
        expansionPackKey: 'A'),
    WishModel(
        imagePath: WishImages.ltwMonsterMaker,
        name: 'Monster Maker',
        expansionPackKey: 'A'),
    WishModel(
        imagePath: WishImages.ltwParanormalProfiteer,
        name: 'Paranormal Profiteer',
        expansionPackKey: 'A'),
    WishModel(
        imagePath: WishImages.ltwPervasivePrivateEye,
        name: 'Pervasive Private Eye',
        expansionPackKey: 'A'),
    WishModel(
        imagePath: WishImages.ltwPossessionIsNineTenthsOfTheLaw,
        name: 'Possession is Nine Tenths of the Law',
        expansionPackKey: 'A'),
    WishModel(
        imagePath: WishImages.ltwDistinguishedDirector,
        name: 'Distinguished Director',
        expansionPackKey: 'LN'),
    WishModel(
        imagePath: WishImages.ltwLifestyleOfTheRichAndFamous,
        name: 'Lifestyle of the Rich and Famous',
        expansionPackKey: 'LN'),
    WishModel(
        imagePath: WishImages.ltwMasterMixologist,
        name: 'Master Mixologist',
        expansionPackKey: 'LN'),
    WishModel(
        imagePath: WishImages.ltwMasterRomancer,
        name: 'Master Romancer',
        expansionPackKey: 'LN'),
    WishModel(
        imagePath: WishImages.ltwOneSimBand,
        name: 'One Sim Band',
        expansionPackKey: 'LN'),
    WishModel(
        imagePath: WishImages.ltwSuperstarActor,
        name: 'Superstar Actor',
        expansionPackKey: 'LN'),
    WishModel(
        imagePath: WishImages.ltwTheAnimalRescuer,
        name: 'The Animal Rescuer',
        expansionPackKey: 'P'),
    WishModel(
        imagePath: WishImages.ltwTheArkBuilder,
        name: 'The Ark Builder',
        expansionPackKey: 'P'),
    WishModel(
        imagePath: WishImages.ltwTheCanineCompanion,
        name: 'The Canine Companion',
        expansionPackKey: 'P'),
    WishModel(
        imagePath: WishImages.ltwTheCatHerder,
        name: 'The Cat Herder',
        expansionPackKey: 'P'),
    WishModel(
        imagePath: WishImages.ltwTheFairyTaleFinder,
        name: 'The Fairy Tale Finder',
        expansionPackKey: 'P'),
    WishModel(
        imagePath: WishImages.ltwTheJockey,
        name: 'The Jockey',
        expansionPackKey: 'P'),
    WishModel(
        imagePath: WishImages.ltwTheZoologist,
        name: 'The Zoologist',
        expansionPackKey: 'P'),
    WishModel(
        imagePath: WishImages.ltwMasterAcrobat,
        name: 'Master Acrobat',
        expansionPackKey: 'ST'),
    WishModel(
        imagePath: WishImages.ltwMasterMagician,
        name: 'Master Magician',
        expansionPackKey: 'ST'),
    WishModel(
        imagePath: WishImages.ltwVocalLegend,
        name: 'Vocal Legend',
        expansionPackKey: 'ST'),
    WishModel(
        imagePath: WishImages.ltwAlchemyArtisan,
        name: 'Alchemy Artisan',
        expansionPackKey: 'SN'),
    WishModel(
        imagePath: WishImages.ltwCelebrityPsychic,
        name: 'Celebrity Psychic',
        expansionPackKey: 'SN'),
    WishModel(
        imagePath: WishImages.ltwGreenerGardens,
        name: 'Greener Gardens',
        expansionPackKey: 'SN'),
    WishModel(
        imagePath: WishImages.ltwLeaderOfThePack,
        name: 'Leader of the Pack',
        expansionPackKey: 'SN'),
    WishModel(
        imagePath: WishImages.ltwMagicMakeover,
        name: 'Magic Makeover',
        expansionPackKey: 'SN'),
    WishModel(
        imagePath: WishImages.ltwMasterOfMysticism,
        name: 'Master of Mysticism',
        expansionPackKey: 'SN'),
    WishModel(
        imagePath: WishImages.ltwMysticHealer,
        name: 'Mystic Healer',
        expansionPackKey: 'SN'),
    WishModel(
        imagePath: WishImages.ltwTurnTheTown,
        name: 'Turn the Town',
        expansionPackKey: 'SN'),
    WishModel(
        imagePath: WishImages.ltwZombieMaster,
        name: 'Zombie Master',
        expansionPackKey: 'SN'),
    WishModel(
        imagePath: WishImages.ltwBlogArtist,
        name: 'Blog Artist',
        expansionPackKey: 'UL'),
    WishModel(
        imagePath: WishImages.ltwMajorMaster,
        name: 'Major Master',
        expansionPackKey: 'UL'),
    WishModel(
        imagePath: WishImages.ltwPerfectStudent,
        name: 'Perfect Student',
        expansionPackKey: 'UL'),
    WishModel(
        imagePath: WishImages.ltwReachMaxInfluenceWithAllSocialGroups,
        name: 'Reach Max Influence with All Social Groups',
        expansionPackKey: 'UL'),
    WishModel(
        imagePath: WishImages.ltwScientificSpecialist,
        name: 'Scientific Specialist',
        expansionPackKey: 'UL'),
    WishModel(
        imagePath: WishImages.ltwStreetCredible,
        name: 'Street Credible',
        expansionPackKey: 'UL'),
    WishModel(
        imagePath: WishImages.ltwDeepSeaDiver,
        name: 'Deep Sea Diver',
        expansionPackKey: 'IP'),
    WishModel(
        imagePath: WishImages.ltwGrandExplorer,
        name: 'Grand Explorer',
        expansionPackKey: 'IP'),
    WishModel(
        imagePath: WishImages.ltwResortEmpire,
        name: 'Resort Empire',
        expansionPackKey: 'IP'),
    WishModel(
        imagePath: WishImages.ltwSeasideSavior,
        name: 'Seaside Savior',
        expansionPackKey: 'IP'),
    WishModel(
        imagePath: WishImages.ltwHighTechCollector,
        name: 'High Tech Collector',
        expansionPackKey: 'ITF'),
    WishModel(
        imagePath: WishImages.ltwMoreThanAMachine,
        name: 'More than a Machine',
        expansionPackKey: 'ITF'),
    WishModel(
        imagePath: WishImages.ltwMadeTheMostOfMyTime,
        name: 'Made the Most of my Time',
        expansionPackKey: 'ITF'),
  ];

  static final expansionPacks = <ExpansionPackModel>[
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.theSims3Png_),
        name: 'Base Game',
        key: 'BG'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.worldAdventuresPng_),
        name: 'World Adventures',
        key: 'WA'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.ambitionsPng_),
        name: 'Ambitions',
        key: 'A'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.lateNightPng_),
        name: 'Late Night',
        key: 'LN'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.petsPng_),
        name: 'Pets',
        key: 'P'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.showtimePng_),
        name: 'Showtime',
        key: 'ST'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.supernaturalPng_),
        name: 'Supernatural',
        key: 'SN'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.universityLifePng_),
        name: 'University Life',
        key: 'UL'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.islandParadisePng_),
        name: 'Island Paradise',
        key: 'IP'),
    ExpansionPackModel(
        image: Image.asset(ExpansionPacksImages.intoTheFuturePng_),
        name: 'Into the Future',
        key: 'ITF'),
  ];
}