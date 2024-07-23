import 'package:achievements/domain/entities/pack.dart';
import 'package:achievements/domain/entities/wish.dart';
import 'package:achievements/resources/resources.dart';

class PackList {
  PackList._();

  static final theSimsTwoExpansionPacks = <String, Pack>{
    'IP': Pack(
      imageName: ExpansionPacksImages.IslandParadisePng_,
      name: 'Island Paradise',
      wishes: [
        Wish(
          imageName: WishImages.ltwDeepSeaDiver,
          name: 'Deep Sea Diver',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwGrandExplorer,
          name: 'Grand Explorer',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwResortEmpire,
          name: 'Resort Empire',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwSeasideSavior,
          name: 'Seaside Savior',
          isCompleted: false,
        ),
      ],
    ),
  };

  static final theSimsThreeExpansionPacks = <String, Pack>{
    'BG': Pack(
      imageName: ExpansionPacksImages.theSims3Png_,
      name: 'Base Game',
      wishes: [
        Wish(
          imageName: WishImages.ltwBecomeACreatureRobotCrossBreeder,
          name: 'Become a Creature-Robot Cross Breeder',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwBecomeAMasterThief,
          name: 'Become a Master Thief',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwBecomeASuperstarAthlete,
          name: 'Become a Superstar Athlete',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwBecomeAnAstronaut,
          name: 'Become an Astronaut',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwCelebratedFiveStarChef,
          name: 'Celebrated Five-Star Chef',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwCeoOfAMegaCorporation,
          name: 'CEO of a Mega-Corporation',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwChessLegend,
          name: 'Chess Legend',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwForensicSpecialistDynamicDnaProfiler,
          name: 'Forensic Specialist: Dynamic DNA Profiler',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwGoldDigger,
          name: 'Gold Digger',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwGoldenTongue2CGoldenFingers,
          name: 'Golden Tongue, Golden Fingers',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwHeartbreaker,
          name: 'Heartbreaker',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwHitMovieComposer,
          name: 'Hit Movie Composer',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwIllustriousAuthor,
          name: 'Illustrious Author',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwInternationalSuperSpy,
          name: 'International Super Spy',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwJackOfAllTrades,
          name: 'Jack of All Trades',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwLeaderOfTheFreeWorld,
          name: 'Leader of the Free World',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwLivingInTheLapOfLuxury,
          name: 'Living in the Lap of Luxury',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMasterOfTheArts,
          name: 'Master of the Arts',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwPerfectMind2CPerfectBody,
          name: 'Perfect Mind, Perfect Body',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwPresentingThePerfectPrivateAquarium,
          name: 'Presenting the Perfect Private Aquarium',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwProfessionalAuthor,
          name: 'Professional Author',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwRenaissanceSim,
          name: 'Renaissance Sim',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwRockStar,
          name: 'Rock Star',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwStarNewsAnchor,
          name: 'Star News Anchor',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwSuperPopular,
          name: 'Super Popular',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwSurroundedByFamily,
          name: 'Surrounded by Family',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwSwimmingInCash,
          name: 'Swimming in Cash',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwTheCulinaryLibrarian,
          name: 'The Culinary Librarian',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwTheEmperorOfEvil,
          name: 'The Emperor of Evil',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwThePerfectGarden,
          name: 'The Perfect Garden',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwTheTinkerer,
          name: 'The Tinkerer',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwWorldRenownedSurgeon,
          name: 'World Renowned Surgeon',
          isCompleted: false,
        ),
      ],
    ),
    'WA': Pack(
      imageName: ExpansionPacksImages.WorldAdventuresPng_,
      name: 'World Adventures',
      wishes: [
        Wish(
          imageName: WishImages.ltwBottomlessNectarCellar,
          name: 'Bottomless Nectar Cellar',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwGreatExplorer,
          name: 'Great Explorer',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMartialArtsMaster,
          name: 'Martial Arts Master',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwPhysicalPerfection,
          name: 'Physical Perfection',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwPrivateMuseum,
          name: 'Private Museum',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwSeasonedTraveler,
          name: 'Seasoned Traveler',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwVisionary,
          name: 'Visionary',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwWorldClassGallery,
          name: 'World-Class Gallery',
          isCompleted: false,
        ),
      ],
    ),
    'A': Pack(
      imageName: ExpansionPacksImages.AmbitionsPng_,
      name: 'Ambitions',
      wishes: [
        Wish(
          imageName: WishImages.ltwDescendantOfDaVinci,
          name: 'Descendant of da Vinci',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwFashionPhenomenon,
          name: 'Fashion Phenomenon',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwFirefighterSuperHero,
          name: 'Firefighter Super Hero',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwHomeDesignHotshot,
          name: 'Home Design Hotshot',
            isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMonsterMaker,
          name: 'Monster Maker',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwParanormalProfiteer,
          name: 'Paranormal Profiteer',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwPervasivePrivateEye,
          name: 'Pervasive Private Eye',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwPossessionIsNineTenthsOfTheLaw,
          name: 'Possession is Nine Tenths of the Law',
          isCompleted: false,
        ),
      ],
    ),
    'LN': Pack(
      imageName: ExpansionPacksImages.LateNightPng_,
      name: 'Late Night',
      wishes: [
        Wish(
          imageName: WishImages.ltwDistinguishedDirector,
          name: 'Distinguished Director',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwLifestyleOfTheRichAndFamous,
          name: 'Lifestyle of the Rich and Famous',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMasterMixologist,
          name: 'Master Mixologist',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMasterRomancer,
          name: 'Master Romancer',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwOneSimBand,
          name: 'One Sim Band',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwSuperstarActor,
          name: 'Superstar Actor',
          isCompleted: false,
        ),
      ],
    ),
    'P': Pack(
      imageName: ExpansionPacksImages.PetsPng_,
      name: 'Pets',
      wishes: [
        Wish(
          imageName: WishImages.ltwTheAnimalRescuer,
          name: 'The Animal Rescuer',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwTheArkBuilder,
          name: 'The Ark Builder',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwTheCanineCompanion,
          name: 'The Canine Companion',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwTheCatHerder,
          name: 'The Cat Herder',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwTheFairyTaleFinder,
          name: 'The Fairy Tale Finder',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwTheJockey,
          name: 'The Jockey',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwTheZoologist,
          name: 'The Zoologist',
          isCompleted: false,
        ),
      ],
    ),
    'ST': Pack(
      imageName: ExpansionPacksImages.ShowtimePng_,
      name: 'Showtime',
      wishes: [
        Wish(
          imageName: WishImages.ltwMasterAcrobat,
          name: 'Master Acrobat',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMasterMagician,
          name: 'Master Magician',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwVocalLegend,
          name: 'Vocal Legend',
          isCompleted: false,
        ),
      ],
    ),
    'SN': Pack(
      imageName: ExpansionPacksImages.SupernaturalPng_,
      name: 'Supernatural',
      wishes: [
        Wish(
          imageName: WishImages.ltwAlchemyArtisan,
          name: 'Alchemy Artisan',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwCelebrityPsychic,
          name: 'Celebrity Psychic',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwGreenerGardens,
          name: 'Greener Gardens',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwLeaderOfThePack,
          name: 'Leader of the Pack',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMagicMakeover,
          name: 'Magic Makeover',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMasterOfMysticism,
          name: 'Master of Mysticism',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMysticHealer,
          name: 'Mystic Healer',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwTurnTheTown,
          name: 'Turn the Town',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwZombieMaster,
          name: 'Zombie Master',
          isCompleted: false,
        ),
      ],
    ),
    'UL': Pack(
      imageName: ExpansionPacksImages.UniversityLifePng_,
      name: 'University Life',
      wishes: [
        Wish(
          imageName: WishImages.ltwBlogArtist,
          name: 'Blog Artist',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMajorMaster,
          name: 'Major Master',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwPerfectStudent,
          name: 'Perfect Student',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwReachMaxInfluenceWithAllSocialGroups,
          name: 'Reach Max Influence with All Social Groups',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwScientificSpecialist,
          name: 'Scientific Specialist',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwStreetCredible,
          name: 'Street Credible',
          isCompleted: false,
        ),
      ],
    ),
    'IP': Pack(
      imageName: ExpansionPacksImages.IslandParadisePng_,
      name: 'Island Paradise',
      wishes: [
        Wish(
          imageName: WishImages.ltwDeepSeaDiver,
          name: 'Deep Sea Diver',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwGrandExplorer,
          name: 'Grand Explorer',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwResortEmpire,
          name: 'Resort Empire',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwSeasideSavior,
          name: 'Seaside Savior',
          isCompleted: false,
        ),
      ],
    ),
    'ITF': Pack(
      imageName: ExpansionPacksImages.IntoTheFuturePng_,
      name: 'Into the Future',
      wishes: [
        Wish(
          imageName: WishImages.ltwHighTechCollector,
          name: 'High Tech Collector',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMoreThanAMachine,
          name: 'More than a Machine',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMadeTheMostOfMyTime,
          name: 'Made the Most of my Time',
          isCompleted: false,
        ),
      ],
    ),
  };

  static final theSimsFourExpansionPacks = <String, Pack>{
    'ITF': Pack(
      imageName: ExpansionPacksImages.IntoTheFuturePng_,
      name: 'Into the Future',
      wishes: [
        Wish(
          imageName: WishImages.ltwHighTechCollector,
          name: 'High Tech Collector',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMoreThanAMachine,
          name: 'More than a Machine',
          isCompleted: false,
        ),
        Wish(
          imageName: WishImages.ltwMadeTheMostOfMyTime,
          name: 'Made the Most of my Time',
          isCompleted: false,
        ),
      ],
    ),
  };
}
