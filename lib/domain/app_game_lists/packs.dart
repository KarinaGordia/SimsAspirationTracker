import 'package:achievements/domain/entities/pack.dart';
import 'package:achievements/domain/entities/wish.dart';
import 'package:achievements/resources/resources.dart';

class PackList {
  PackList._();

  // static final theSimsTwoExpansionPacks = <String, Pack>{
  //   'IP': Pack(
  //     imageName: ExpansionPacksImages.IslandParadisePng_,
  //     name: 'Island Paradise',
  //     wishes: [
  //       Wish(
  //         imageName: WishImages.ltwDeepSeaDiver,
  //         name: 'Deep Sea Diver',
  //         isCompleted: false,
  //       ),
  //       Wish(
  //         imageName: WishImages.ltwGrandExplorer,
  //         name: 'Grand Explorer',
  //         isCompleted: false,
  //       ),
  //       Wish(
  //         imageName: WishImages.ltwResortEmpire,
  //         name: 'Resort Empire',
  //         isCompleted: false,
  //       ),
  //       Wish(
  //         imageName: WishImages.ltwSeasideSavior,
  //         name: 'Seaside Savior',
  //         isCompleted: false,
  //       ),
  //     ],
  //   ),
  // };

  static final theSimsThreeExpansionPacks = <String, Pack>{
    'BG': Pack(
      key: 'BG',
      imageName: ExpansionPacksImages.theSims3Png_,
      name: 'Base Game',
      wishes: {
        'Become a Creature-Robot Cross Breeder': Wish(
          imageName: WishImages.ltwBecomeACreatureRobotCrossBreeder,
          name: 'Become a Creature-Robot Cross Breeder',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Become a Master Thief': Wish(
          imageName: WishImages.ltwBecomeAMasterThief,
          name: 'Become a Master Thief',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Become a Superstar Athlete': Wish(
          imageName: WishImages.ltwBecomeASuperstarAthlete,
          name: 'Become a Superstar Athlete',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Become an Astronaut': Wish(
          imageName: WishImages.ltwBecomeAnAstronaut,
          name: 'Become an Astronaut',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Celebrated Five-Star Chef': Wish(
          imageName: WishImages.ltwCelebratedFiveStarChef,
          name: 'Celebrated Five-Star Chef',
          packKey: 'BG',
          isCompleted: false,
        ),
        'CEO of a Mega-Corporation': Wish(
          imageName: WishImages.ltwCeoOfAMegaCorporation,
          name: 'CEO of a Mega-Corporation',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Chess Legend': Wish(
          imageName: WishImages.ltwChessLegend,
          name: 'Chess Legend',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Forensic Specialist: Dynamic DNA Profiler': Wish(
          imageName: WishImages.ltwForensicSpecialistDynamicDnaProfiler,
          name: 'Forensic Specialist: Dynamic DNA Profiler',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Gold Digger': Wish(
          imageName: WishImages.ltwGoldDigger,
          name: 'Gold Digger',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Golden Tongue, Golden Fingers': Wish(
          imageName: WishImages.ltwGoldenTongue2CGoldenFingers,
          name: 'Golden Tongue, Golden Fingers',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Heartbreaker': Wish(
          imageName: WishImages.ltwHeartbreaker,
          name: 'Heartbreaker',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Hit Movie Composer': Wish(
          imageName: WishImages.ltwHitMovieComposer,
          name: 'Hit Movie Composer',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Illustrious Author': Wish(
          imageName: WishImages.ltwIllustriousAuthor,
          name: 'Illustrious Author',
          packKey: 'BG',
          isCompleted: false,
        ),
        'International Super Spy': Wish(
          imageName: WishImages.ltwInternationalSuperSpy,
          name: 'International Super Spy',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Jack of All Trades': Wish(
          imageName: WishImages.ltwJackOfAllTrades,
          name: 'Jack of All Trades',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Leader of the Free World': Wish(
          imageName: WishImages.ltwLeaderOfTheFreeWorld,
          name: 'Leader of the Free World',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Living in the Lap of Luxury': Wish(
          imageName: WishImages.ltwLivingInTheLapOfLuxury,
          name: 'Living in the Lap of Luxury',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Master of the Arts': Wish(
          imageName: WishImages.ltwMasterOfTheArts,
          name: 'Master of the Arts',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Perfect Mind, Perfect Body': Wish(
          imageName: WishImages.ltwPerfectMind2CPerfectBody,
          name: 'Perfect Mind, Perfect Body',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Presenting the Perfect Private Aquarium': Wish(
          imageName: WishImages.ltwPresentingThePerfectPrivateAquarium,
          name: 'Presenting the Perfect Private Aquarium',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Professional Author': Wish(
          imageName: WishImages.ltwProfessionalAuthor,
          name: 'Professional Author',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Renaissance Sim': Wish(
          imageName: WishImages.ltwRenaissanceSim,
          name: 'Renaissance Sim',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Rock Star': Wish(
          imageName: WishImages.ltwRockStar,
          name: 'Rock Star',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Star News Anchor': Wish(
          imageName: WishImages.ltwStarNewsAnchor,
          name: 'Star News Anchor',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Super Popular': Wish(
          imageName: WishImages.ltwSuperPopular,
          name: 'Super Popular',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Surrounded by Family': Wish(
          imageName: WishImages.ltwSurroundedByFamily,
          name: 'Surrounded by Family',
          packKey: 'BG',
          isCompleted: false,
        ),
        'Swimming in Cash': Wish(
          imageName: WishImages.ltwSwimmingInCash,
          name: 'Swimming in Cash',
          packKey: 'BG',
          isCompleted: false,
        ),
        'The Culinary Librarian': Wish(
          imageName: WishImages.ltwTheCulinaryLibrarian,
          name: 'The Culinary Librarian',
          packKey: 'BG',
          isCompleted: false,
        ),
        'The Emperor of Evil': Wish(
          imageName: WishImages.ltwTheEmperorOfEvil,
          name: 'The Emperor of Evil',
          packKey: 'BG',
          isCompleted: false,
        ),
        'The Perfect Garden': Wish(
          imageName: WishImages.ltwThePerfectGarden,
          name: 'The Perfect Garden',
          packKey: 'BG',
          isCompleted: false,
        ),
        'The Tinkerer': Wish(
          imageName: WishImages.ltwTheTinkerer,
          name: 'The Tinkerer',
          packKey: 'BG',
          isCompleted: false,
        ),
        'World Renowned Surgeon': Wish(
          imageName: WishImages.ltwWorldRenownedSurgeon,
          name: 'World Renowned Surgeon',
          packKey: 'BG',
          isCompleted: false,
        ),
      },
    ),
    'WA': Pack(
      key: 'WA',
      imageName: ExpansionPacksImages.WorldAdventuresPng_,
      name: 'World Adventures',
      wishes: {
        'Bottomless Nectar Cellar': Wish(
          imageName: WishImages.ltwBottomlessNectarCellar,
          name: 'Bottomless Nectar Cellar',
          packKey: 'WA',
          isCompleted: false,
        ),
        'Great Explorer': Wish(
          imageName: WishImages.ltwGreatExplorer,
          name: 'Great Explorer',
          packKey: 'WA',
          isCompleted: false,
        ),
        'Martial Arts Master': Wish(
          imageName: WishImages.ltwMartialArtsMaster,
          name: 'Martial Arts Master',
          packKey: 'WA',
          isCompleted: false,
        ),
        'Physical Perfection': Wish(
          imageName: WishImages.ltwPhysicalPerfection,
          name: 'Physical Perfection',
          packKey: 'WA',
          isCompleted: false,
        ),
        'Private Museum': Wish(
          imageName: WishImages.ltwPrivateMuseum,
          name: 'Private Museum',
          packKey: 'WA',
          isCompleted: false,
        ),
        'Seasoned Traveler': Wish(
          imageName: WishImages.ltwSeasonedTraveler,
          name: 'Seasoned Traveler',
          packKey: 'WA',
          isCompleted: false,
        ),
        'Visionary': Wish(
          imageName: WishImages.ltwVisionary,
          name: 'Visionary',
          packKey: 'WA',
          isCompleted: false,
        ),
        'World-Class Gallery': Wish(
          imageName: WishImages.ltwWorldClassGallery,
          name: 'World-Class Gallery',
          packKey: 'WA',
          isCompleted: false,
        ),
      },
    ),
    'A': Pack(
      key: 'A',
      imageName: ExpansionPacksImages.AmbitionsPng_,
      name: 'Ambitions',
      wishes: {
        'Descendant of da Vinci': Wish(
          imageName: WishImages.ltwDescendantOfDaVinci,
          name: 'Descendant of da Vinci',
          packKey: 'A',
          isCompleted: false,
        ),
        'Fashion Phenomenon': Wish(
          imageName: WishImages.ltwFashionPhenomenon,
          name: 'Fashion Phenomenon',
          packKey: 'A',
          isCompleted: false,
        ),
        'Firefighter Super Hero': Wish(
          imageName: WishImages.ltwFirefighterSuperHero,
          name: 'Firefighter Super Hero',
          packKey: 'A',
          isCompleted: false,
        ),
        'Home Design Hotshot': Wish(
          imageName: WishImages.ltwHomeDesignHotshot,
          name: 'Home Design Hotshot',
          packKey: 'A',
          isCompleted: false,
        ),
        'Monster Maker': Wish(
          imageName: WishImages.ltwMonsterMaker,
          name: 'Monster Maker',
          packKey: 'A',
          isCompleted: false,
        ),
        'Paranormal Profiteer': Wish(
          imageName: WishImages.ltwParanormalProfiteer,
          name: 'Paranormal Profiteer',
          packKey: 'A',
          isCompleted: false,
        ),
        'Pervasive Private Eye': Wish(
          imageName: WishImages.ltwPervasivePrivateEye,
          name: 'Pervasive Private Eye',
          packKey: 'A',
          isCompleted: false,
        ),
        'Possession is Nine Tenths of the Law': Wish(
          imageName: WishImages.ltwPossessionIsNineTenthsOfTheLaw,
          name: 'Possession is Nine Tenths of the Law',
          packKey: 'A',
          isCompleted: false,
        ),
      },
    ),
    'LN': Pack(
      key: 'LN',
      imageName: ExpansionPacksImages.LateNightPng_,
      name: 'Late Night',
      wishes: {
        'Distinguished Director': Wish(
          imageName: WishImages.ltwDistinguishedDirector,
          name: 'Distinguished Director',
          packKey: 'LN',
          isCompleted: false,
        ),
        'Lifestyle of the Rich and Famous': Wish(
          imageName: WishImages.ltwLifestyleOfTheRichAndFamous,
          name: 'Lifestyle of the Rich and Famous',
          packKey: 'LN',
          isCompleted: false,
        ),
        'Master Mixologist': Wish(
          imageName: WishImages.ltwMasterMixologist,
          name: 'Master Mixologist',
          packKey: 'LN',
          isCompleted: false,
        ),
        'Master Romancer': Wish(
          imageName: WishImages.ltwMasterRomancer,
          name: 'Master Romancer',
          packKey: 'LN',
          isCompleted: false,
        ),
        'One Sim Band': Wish(
          imageName: WishImages.ltwOneSimBand,
          name: 'One Sim Band',
          packKey: 'LN',
          isCompleted: false,
        ),
        'Superstar Actor': Wish(
          imageName: WishImages.ltwSuperstarActor,
          name: 'Superstar Actor',
          packKey: 'LN',
          isCompleted: false,
        ),
      },
    ),
    'P': Pack(
      key: 'P',
      imageName: ExpansionPacksImages.PetsPng_,
      name: 'Pets',
      wishes: {
        'The Animal Rescuer': Wish(
          imageName: WishImages.ltwTheAnimalRescuer,
          name: 'The Animal Rescuer',
          packKey: 'P',
          isCompleted: false,
        ),
        'The Ark Builder': Wish(
          imageName: WishImages.ltwTheArkBuilder,
          name: 'The Ark Builder',
          packKey: 'P',
          isCompleted: false,
        ),
        'The Canine Companion': Wish(
          imageName: WishImages.ltwTheCanineCompanion,
          name: 'The Canine Companion',
          packKey: 'P',
          isCompleted: false,
        ),
        'The Cat Herder': Wish(
          imageName: WishImages.ltwTheCatHerder,
          name: 'The Cat Herder',
          packKey: 'P',
          isCompleted: false,
        ),
        'The Fairy Tale Finder': Wish(
          imageName: WishImages.ltwTheFairyTaleFinder,
          name: 'The Fairy Tale Finder',
          packKey: 'P',
          isCompleted: false,
        ),
        'The Jockey': Wish(
          imageName: WishImages.ltwTheJockey,
          name: 'The Jockey',
          packKey: 'P',
          isCompleted: false,
        ),
        'The Zoologist': Wish(
          imageName: WishImages.ltwTheZoologist,
          name: 'The Zoologist',
          packKey: 'P',
          isCompleted: false,
        ),
      },
    ),
    'ST': Pack(
      key: 'ST',
      imageName: ExpansionPacksImages.ShowtimePng_,
      name: 'Showtime',
      wishes: {
        'Master Acrobat': Wish(
          imageName: WishImages.ltwMasterAcrobat,
          name: 'Master Acrobat',
          packKey: 'ST',
          isCompleted: false,
        ),
        'Master Magician': Wish(
          imageName: WishImages.ltwMasterMagician,
          name: 'Master Magician',
          packKey: 'ST',
          isCompleted: false,
        ),
        'Vocal Legend': Wish(
          imageName: WishImages.ltwVocalLegend,
          name: 'Vocal Legend',
          packKey: 'ST',
          isCompleted: false,
        ),
      },
    ),
    'SN': Pack(
      key: 'SN',
      imageName: ExpansionPacksImages.SupernaturalPng_,
      name: 'Supernatural',
      wishes: {
        'Alchemy Artisan': Wish(
          imageName: WishImages.ltwAlchemyArtisan,
          name: 'Alchemy Artisan',
          packKey: 'SN',
          isCompleted: false,
        ),
        'Celebrity Psychic': Wish(
          imageName: WishImages.ltwCelebrityPsychic,
          name: 'Celebrity Psychic',
          packKey: 'SN',
          isCompleted: false,
        ),
        'Greener Gardens': Wish(
          imageName: WishImages.ltwGreenerGardens,
          name: 'Greener Gardens',
          packKey: 'SN',
          isCompleted: false,
        ),
        'Leader of the Pack': Wish(
          imageName: WishImages.ltwLeaderOfThePack,
          name: 'Leader of the Pack',
          packKey: 'SN',
          isCompleted: false,
        ),
        'Magic Makeover': Wish(
          imageName: WishImages.ltwMagicMakeover,
          name: 'Magic Makeover',
          packKey: 'SN',
          isCompleted: false,
        ),
        'Master of Mysticism': Wish(
          imageName: WishImages.ltwMasterOfMysticism,
          name: 'Master of Mysticism',
          packKey: 'SN',
          isCompleted: false,
        ),
        'Mystic Healer': Wish(
          imageName: WishImages.ltwMysticHealer,
          name: 'Mystic Healer',
          packKey: 'SN',
          isCompleted: false,
        ),
        'Turn the Town': Wish(
          imageName: WishImages.ltwTurnTheTown,
          name: 'Turn the Town',
          packKey: 'SN',
          isCompleted: false,
        ),
        'Zombie Master': Wish(
          imageName: WishImages.ltwZombieMaster,
          name: 'Zombie Master',
          packKey: 'SN',
          isCompleted: false,
        ),
      },
    ),
    'UL': Pack(
      key: 'UL',
      imageName: ExpansionPacksImages.UniversityLifePng_,
      name: 'University Life',
      wishes: {
        'Blog Artist': Wish(
          imageName: WishImages.ltwBlogArtist,
          name: 'Blog Artist',
          packKey: 'UL',
          isCompleted: false,
        ),
        'Major Master': Wish(
          imageName: WishImages.ltwMajorMaster,
          name: 'Major Master',
          packKey: 'UL',
          isCompleted: false,
        ),
        'Perfect Student': Wish(
          imageName: WishImages.ltwPerfectStudent,
          name: 'Perfect Student',
          packKey: 'UL',
          isCompleted: false,
        ),
        'Reach Max Influence with All Social Groups': Wish(
          imageName: WishImages.ltwReachMaxInfluenceWithAllSocialGroups,
          name: 'Reach Max Influence with All Social Groups',
          packKey: 'UL',
          isCompleted: false,
        ),
        'Scientific Specialist': Wish(
          imageName: WishImages.ltwScientificSpecialist,
          name: 'Scientific Specialist',
          packKey: 'UL',
          isCompleted: false,
        ),
        'Street Credible': Wish(
          imageName: WishImages.ltwStreetCredible,
          name: 'Street Credible',
          packKey: 'UL',
          isCompleted: false,
        ),
      },
    ),
    'IP': Pack(
      key: 'IP',
      imageName: ExpansionPacksImages.IslandParadisePng_,
      name: 'Island Paradise',
      wishes: {
        'Deep Sea Diver': Wish(
          imageName: WishImages.ltwDeepSeaDiver,
          name: 'Deep Sea Diver',
          packKey: 'IP',
          isCompleted: false,
        ),
        'Grand Explorer': Wish(
          imageName: WishImages.ltwGrandExplorer,
          name: 'Grand Explorer',
          packKey: 'IP',
          isCompleted: false,
        ),
        'Resort Empire': Wish(
          imageName: WishImages.ltwResortEmpire,
          name: 'Resort Empire',
          packKey: 'IP',
          isCompleted: false,
        ),
        'Seaside Savior': Wish(
          imageName: WishImages.ltwSeasideSavior,
          name: 'Seaside Savior',
          packKey: 'IP',
          isCompleted: false,
        ),
      },
    ),
    'ITF': Pack(
      key: 'ITF',
      imageName: ExpansionPacksImages.IntoTheFuturePng_,
      name: 'Into the Future',
      wishes: {
        'High Tech Collector': Wish(
          imageName: WishImages.ltwHighTechCollector,
          name: 'High Tech Collector',
          packKey: 'ITF',
          isCompleted: false,
        ),
        'More than a Machine': Wish(
          imageName: WishImages.ltwMoreThanAMachine,
          name: 'More than a Machine',
          packKey: 'ITF',
          isCompleted: false,
        ),
        'Made the Most of my Time': Wish(
          imageName: WishImages.ltwMadeTheMostOfMyTime,
          name: 'Made the Most of my Time',
          packKey: 'ITF',
          isCompleted: false,
        ),
      },
    ),
  };

  static final theSimsFourExpansionPacks = <String, Pack>{
    'ITF': Pack(
      key: 'ITF',
      imageName: ExpansionPacksImages.IntoTheFuturePng_,
      name: 'Into the Future',
      wishes: {
        'High Tech Collector': Wish(
          imageName: WishImages.ltwHighTechCollector,
          name: 'High Tech Collector',
          packKey: 'ITF',
          isCompleted: false,
        ),
        'More than a Machine': Wish(
          imageName: WishImages.ltwMoreThanAMachine,
          name: 'More than a Machine',
          packKey: 'ITF',
          isCompleted: false,
        ),
        'Made the Most of my Time': Wish(
          imageName: WishImages.ltwMadeTheMostOfMyTime,
          name: 'Made the Most of my Time',
          packKey: 'ITF',
          isCompleted: false,
        ),
      },
    ),
  };
}
