import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:achievements/resources/resources.dart';

void main() {
  test('wish_images assets test', () {
    expect(File(WishImages.ltwBecomeACreatureRobotCrossBreeder).existsSync(),
        isTrue);
    expect(File(WishImages.ltwBecomeAMasterThief).existsSync(), isTrue);
    expect(File(WishImages.ltwBecomeASuperstarAthlete).existsSync(), isTrue);
    expect(File(WishImages.ltwBecomeAnAstronaut).existsSync(), isTrue);
    expect(File(WishImages.ltwCeoOfAMegaCorporation).existsSync(), isTrue);
    expect(File(WishImages.ltwCelebratedFiveStarChef).existsSync(), isTrue);
    expect(File(WishImages.ltwChessLegend).existsSync(), isTrue);
    expect(
        File(WishImages.ltwForensicSpecialistDynamicDnaProfiler).existsSync(),
        isTrue);
    expect(File(WishImages.ltwGoldDigger).existsSync(), isTrue);
    expect(
        File(WishImages.ltwGoldenTongue2CGoldenFingers).existsSync(), isTrue);
    expect(File(WishImages.ltwHeartbreaker).existsSync(), isTrue);
    expect(File(WishImages.ltwHitMovieComposer).existsSync(), isTrue);
    expect(File(WishImages.ltwIllustriousAuthor).existsSync(), isTrue);
    expect(File(WishImages.ltwInternationalSuperSpy).existsSync(), isTrue);
    expect(File(WishImages.ltwJackOfAllTrades).existsSync(), isTrue);
    expect(File(WishImages.ltwLeaderOfTheFreeWorld).existsSync(), isTrue);
    expect(File(WishImages.ltwLivingInTheLapOfLuxury).existsSync(), isTrue);
    expect(File(WishImages.ltwMasterOfTheArts).existsSync(), isTrue);
    expect(File(WishImages.ltwPerfectMind2CPerfectBody).existsSync(), isTrue);
    expect(File(WishImages.ltwPresentingThePerfectPrivateAquarium).existsSync(),
        isTrue);
    expect(File(WishImages.ltwProfessionalAuthor).existsSync(), isTrue);
    expect(File(WishImages.ltwRenaissanceSim).existsSync(), isTrue);
    expect(File(WishImages.ltwRockStar).existsSync(), isTrue);
    expect(File(WishImages.ltwStarNewsAnchor).existsSync(), isTrue);
    expect(File(WishImages.ltwSuperPopular).existsSync(), isTrue);
    expect(File(WishImages.ltwSurroundedByFamily).existsSync(), isTrue);
    expect(File(WishImages.ltwSwimmingInCash).existsSync(), isTrue);
    expect(File(WishImages.ltwTheCulinaryLibrarian).existsSync(), isTrue);
    expect(File(WishImages.ltwTheEmperorOfEvil).existsSync(), isTrue);
    expect(File(WishImages.ltwThePerfectGarden).existsSync(), isTrue);
    expect(File(WishImages.ltwTheTinkerer).existsSync(), isTrue);
    expect(File(WishImages.ltwWorldRenownedSurgeon).existsSync(), isTrue);
  });
}
