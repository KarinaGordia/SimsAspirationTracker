// import 'package:achievements/domain/entities/wish.dart';
// import 'package:achievements/resources/resources.dart';
//
// class WishList {
//   WishList._();
//
//   static final theSimsTwoWishes = <Wish>[
//     Wish(
//         imageName: WishImages.ltwBecomeACreatureRobotCrossBreeder,
//         name: 'Become a Creature-Robot Cross Breeder',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwBecomeAMasterThief,
//         name: 'Become a Master Thief',
//         expansionPackKey: 'BG'),
//   ];
//
//   static final theSimsThreeWishes = <Wish>[
//     Wish(
//         imageName: WishImages.ltwBecomeACreatureRobotCrossBreeder,
//         name: 'Become a Creature-Robot Cross Breeder',
//       isCompleted: false,
//         ),
//     Wish(
//         imageName: WishImages.ltwBecomeAMasterThief,
//         name: 'Become a Master Thief', isCompleted: false,
//         ),
//     Wish(
//         imageName: WishImages.ltwBecomeASuperstarAthlete,
//         name: 'Become a Superstar Athlete', isCompleted: false,
//         ),
//     Wish(
//         imageName: WishImages.ltwBecomeAnAstronaut,
//         name: 'Become an Astronaut',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwCelebratedFiveStarChef,
//         name: 'Celebrated Five-Star Chef',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwCeoOfAMegaCorporation,
//         name: 'CEO of a Mega-Corporation',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwChessLegend,
//         name: 'Chess Legend',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwForensicSpecialistDynamicDnaProfiler,
//         name: 'Forensic Specialist: Dynamic DNA Profiler',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwGoldDigger,
//         name: 'Gold Digger',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwGoldenTongue2CGoldenFingers,
//         name: 'Golden Tongue, Golden Fingers',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwHeartbreaker,
//         name: 'Heartbreaker',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwHitMovieComposer,
//         name: 'Hit Movie Composer',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwIllustriousAuthor,
//         name: 'Illustrious Author',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwInternationalSuperSpy,
//         name: 'International Super Spy',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwJackOfAllTrades,
//         name: 'Jack of All Trades',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwLeaderOfTheFreeWorld,
//         name: 'Leader of the Free World',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwLivingInTheLapOfLuxury,
//         name: 'Living in the Lap of Luxury',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwMasterOfTheArts,
//         name: 'Master of the Arts',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwPerfectMind2CPerfectBody,
//         name: 'Perfect Mind, Perfect Body',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwPresentingThePerfectPrivateAquarium,
//         name: 'Presenting the Perfect Private Aquarium',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwProfessionalAuthor,
//         name: 'Professional Author',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwRenaissanceSim,
//         name: 'Renaissance Sim',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwRockStar,
//         name: 'Rock Star',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwStarNewsAnchor,
//         name: 'Star News Anchor',
//         expansionPackKey: 'BG'),
//     Wish(
//         imageName: WishImages.ltwSuperPopular,
//         name: 'Super Popular',
//         expansionPackKey: 'BG'),
//     Wish(
//       imageName: WishImages.ltwSurroundedByFamily,
//       name: 'Surrounded by Family',
//       expansionPackKey: 'BG',
//     ),
//     Wish(
//       imageName: WishImages.ltwSwimmingInCash,
//       name: 'Swimming in Cash',
//       expansionPackKey: 'BG',
//     ),
//     Wish(
//       imageName: WishImages.ltwTheCulinaryLibrarian,
//       name: 'The Culinary Librarian',
//       expansionPackKey: 'BG',
//     ),
//     Wish(
//       imageName: WishImages.ltwTheEmperorOfEvil,
//       name: 'The Emperor of Evil',
//       expansionPackKey: 'BG',
//     ),
//     Wish(
//       imageName: WishImages.ltwThePerfectGarden,
//       name: 'The Perfect Garden',
//       expansionPackKey: 'BG',
//     ),
//     Wish(
//       imageName: WishImages.ltwTheTinkerer,
//       name: 'The Tinkerer',
//       expansionPackKey: 'BG',
//     ),
//     Wish(
//       imageName: WishImages.ltwWorldRenownedSurgeon,
//       name: 'World Renowned Surgeon',
//       expansionPackKey: 'BG',
//     ),
//     Wish(
//       imageName: WishImages.ltwBottomlessNectarCellar,
//       name: 'Bottomless Nectar Cellar',
//       expansionPackKey: 'WA',
//     ),
//     Wish(
//       imageName: WishImages.ltwGreatExplorer,
//       name: 'Great Explorer',
//       expansionPackKey: 'WA',
//     ),
//     Wish(
//       imageName: WishImages.ltwMartialArtsMaster,
//       name: 'Martial Arts Master',
//       expansionPackKey: 'WA',
//     ),
//     Wish(
//       imageName: WishImages.ltwPhysicalPerfection,
//       name: 'Physical Perfection',
//       expansionPackKey: 'WA',
//     ),
//     Wish(
//       imageName: WishImages.ltwPrivateMuseum,
//       name: 'Private Museum',
//       expansionPackKey: 'WA',
//     ),
//     Wish(
//       imageName: WishImages.ltwSeasonedTraveler,
//       name: 'Seasoned Traveler',
//       expansionPackKey: 'WA',
//     ),
//     Wish(
//       imageName: WishImages.ltwVisionary,
//       name: 'Visionary',
//       expansionPackKey: 'WA',
//     ),
//     Wish(
//       imageName: WishImages.ltwWorldClassGallery,
//       name: 'World-Class Gallery',
//       expansionPackKey: 'WA',
//     ),
//     Wish(
//       imageName: WishImages.ltwDescendantOfDaVinci,
//       name: 'Descendant of da Vinci',
//       expansionPackKey: 'A',
//     ),
//     Wish(
//       imageName: WishImages.ltwFashionPhenomenon,
//       name: 'Fashion Phenomenon',
//       expansionPackKey: 'A',
//     ),
//     Wish(
//       imageName: WishImages.ltwFirefighterSuperHero,
//       name: 'Firefighter Super Hero',
//       expansionPackKey: 'A',
//     ),
//     Wish(
//       imageName: WishImages.ltwHomeDesignHotshot,
//       name: 'Home Design Hotshot',
//       expansionPackKey: 'A',
//     ),
//     Wish(
//       imageName: WishImages.ltwMonsterMaker,
//       name: 'Monster Maker',
//       expansionPackKey: 'A',
//     ),
//     Wish(
//       imageName: WishImages.ltwParanormalProfiteer,
//       name: 'Paranormal Profiteer',
//       expansionPackKey: 'A',
//     ),
//     Wish(
//       imageName: WishImages.ltwPervasivePrivateEye,
//       name: 'Pervasive Private Eye',
//       expansionPackKey: 'A',
//     ),
//     Wish(
//       imageName: WishImages.ltwPossessionIsNineTenthsOfTheLaw,
//       name: 'Possession is Nine Tenths of the Law',
//       expansionPackKey: 'A',
//     ),
//     Wish(
//       imageName: WishImages.ltwDistinguishedDirector,
//       name: 'Distinguished Director',
//       expansionPackKey: 'LN',
//     ),
//     Wish(
//       imageName: WishImages.ltwLifestyleOfTheRichAndFamous,
//       name: 'Lifestyle of the Rich and Famous',
//       expansionPackKey: 'LN',
//     ),
//     Wish(
//       imageName: WishImages.ltwMasterMixologist,
//       name: 'Master Mixologist',
//       expansionPackKey: 'LN',
//     ),
//     Wish(
//       imageName: WishImages.ltwMasterRomancer,
//       name: 'Master Romancer',
//       expansionPackKey: 'LN',
//     ),
//     Wish(
//       imageName: WishImages.ltwOneSimBand,
//       name: 'One Sim Band',
//       expansionPackKey: 'LN',
//     ),
//     Wish(
//       imageName: WishImages.ltwSuperstarActor,
//       name: 'Superstar Actor',
//       expansionPackKey: 'LN',
//     ),
//     Wish(
//       imageName: WishImages.ltwTheAnimalRescuer,
//       name: 'The Animal Rescuer',
//       expansionPackKey: 'P',
//     ),
//     Wish(
//       imageName: WishImages.ltwTheArkBuilder,
//       name: 'The Ark Builder',
//       expansionPackKey: 'P',
//     ),
//     Wish(
//       imageName: WishImages.ltwTheCanineCompanion,
//       name: 'The Canine Companion',
//       expansionPackKey: 'P',
//     ),
//     Wish(
//       imageName: WishImages.ltwTheCatHerder,
//       name: 'The Cat Herder',
//       expansionPackKey: 'P',
//     ),
//     Wish(
//       imageName: WishImages.ltwTheFairyTaleFinder,
//       name: 'The Fairy Tale Finder',
//       expansionPackKey: 'P',
//     ),
//     Wish(
//       imageName: WishImages.ltwTheJockey,
//       name: 'The Jockey',
//       expansionPackKey: 'P',
//     ),
//     Wish(
//       imageName: WishImages.ltwTheZoologist,
//       name: 'The Zoologist',
//       expansionPackKey: 'P',
//     ),
//     Wish(
//       imageName: WishImages.ltwMasterAcrobat,
//       name: 'Master Acrobat',
//       expansionPackKey: 'ST',
//     ),
//     Wish(
//       imageName: WishImages.ltwMasterMagician,
//       name: 'Master Magician',
//       expansionPackKey: 'ST',
//     ),
//     Wish(
//       imageName: WishImages.ltwVocalLegend,
//       name: 'Vocal Legend',
//       expansionPackKey: 'ST',
//     ),
//     Wish(
//       imageName: WishImages.ltwAlchemyArtisan,
//       name: 'Alchemy Artisan',
//       expansionPackKey: 'SN',
//     ),
//     Wish(
//       imageName: WishImages.ltwCelebrityPsychic,
//       name: 'Celebrity Psychic',
//       expansionPackKey: 'SN',
//     ),
//     Wish(
//       imageName: WishImages.ltwGreenerGardens,
//       name: 'Greener Gardens',
//       expansionPackKey: 'SN',
//     ),
//     Wish(
//       imageName: WishImages.ltwLeaderOfThePack,
//       name: 'Leader of the Pack',
//       expansionPackKey: 'SN',
//     ),
//     Wish(
//       imageName: WishImages.ltwMagicMakeover,
//       name: 'Magic Makeover',
//       expansionPackKey: 'SN',
//     ),
//     Wish(
//       imageName: WishImages.ltwMasterOfMysticism,
//       name: 'Master of Mysticism',
//       expansionPackKey: 'SN',
//     ),
//     Wish(
//       imageName: WishImages.ltwMysticHealer,
//       name: 'Mystic Healer',
//       expansionPackKey: 'SN',
//     ),
//     Wish(
//       imageName: WishImages.ltwTurnTheTown,
//       name: 'Turn the Town',
//       expansionPackKey: 'SN',
//     ),
//     Wish(
//       imageName: WishImages.ltwZombieMaster,
//       name: 'Zombie Master',
//       expansionPackKey: 'SN',
//     ),
//     Wish(
//       imageName: WishImages.ltwBlogArtist,
//       name: 'Blog Artist',
//       expansionPackKey: 'UL',
//     ),
//     Wish(
//       imageName: WishImages.ltwMajorMaster,
//       name: 'Major Master',
//       expansionPackKey: 'UL',
//     ),
//     Wish(
//       imageName: WishImages.ltwPerfectStudent,
//       name: 'Perfect Student',
//       expansionPackKey: 'UL',
//     ),
//     Wish(
//       imageName: WishImages.ltwReachMaxInfluenceWithAllSocialGroups,
//       name: 'Reach Max Influence with All Social Groups',
//       expansionPackKey: 'UL',
//     ),
//     Wish(
//       imageName: WishImages.ltwScientificSpecialist,
//       name: 'Scientific Specialist',
//       expansionPackKey: 'UL',
//     ),
//     Wish(
//       imageName: WishImages.ltwStreetCredible,
//       name: 'Street Credible',
//       expansionPackKey: 'UL',
//     ),
//     Wish(
//       imageName: WishImages.ltwDeepSeaDiver,
//       name: 'Deep Sea Diver',
//       expansionPackKey: 'IP',
//     ),
//     Wish(
//       imageName: WishImages.ltwGrandExplorer,
//       name: 'Grand Explorer',
//       expansionPackKey: 'IP',
//     ),
//     Wish(
//       imageName: WishImages.ltwResortEmpire,
//       name: 'Resort Empire',
//       expansionPackKey: 'IP',
//     ),
//     Wish(
//       imageName: WishImages.ltwSeasideSavior,
//       name: 'Seaside Savior',
//       expansionPackKey: 'IP',
//     ),
//     Wish(
//       imageName: WishImages.ltwHighTechCollector,
//       name: 'High Tech Collector',
//       expansionPackKey: 'ITF',
//     ),
//     Wish(
//       imageName: WishImages.ltwMoreThanAMachine,
//       name: 'More than a Machine',
//       expansionPackKey: 'ITF',
//     ),
//     Wish(
//       imageName: WishImages.ltwMadeTheMostOfMyTime,
//       name: 'Made the Most of my Time',
//       expansionPackKey: 'ITF',
//     ),
//   ];
//
//   static final theSimsFourWishes = <Wish>[
//     Wish(
//       imageName: WishImages.ltwHighTechCollector,
//       name: 'High Tech Collector',
//       expansionPackKey: 'ITF',
//     ),
//     Wish(
//       imageName: WishImages.ltwMoreThanAMachine,
//       name: 'More than a Machine',
//       expansionPackKey: 'ITF',
//     ),
//     Wish(
//       imageName: WishImages.ltwMadeTheMostOfMyTime,
//       name: 'Made the Most of my Time',
//       expansionPackKey: 'ITF',
//     ),
//   ];
// }
