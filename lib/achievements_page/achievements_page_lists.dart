import 'package:achievements/achievements_page/achievements_page.dart';
import 'package:achievements/achievements_page/wish_list_builder.dart';
import 'package:flutter/material.dart';

import '../resources/resources.dart';

class AchievementPageLists {
  AchievementPageLists._();

  static final List<WishModel> wishes = [
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