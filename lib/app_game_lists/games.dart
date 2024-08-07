import 'package:achievements/app_game_lists/packs.dart';
import 'package:achievements/domain/entities/game.dart';
import 'package:achievements/resources/resources.dart';

class GameList {
  GameList._();
  static final games = <Game>[
    // Game(
    //    key: 'TS2',
    //   name: 'The Sims 2',
    //   imageName: AppImages.theSims2Logo,
    //   iconName: AppIcons.thesims2,
    //   packs: PackList.theSimsTwoExpansionPacks,
    // ),
    Game(
      key: 'TS3',
      name: 'The Sims 3',
      imageName: AppImages.theSims3Logo,
      iconName: AppIcons.theSims3VistaIconByAureltristenD228w8g,
      packs: PackList.theSimsThreeExpansionPacks,
    ),
    Game(
      key: 'TS4',
      name: 'The Sims 4',
      imageName: AppImages.sims4LogoPrimaryWhiteRgbTransparent1,
      iconName: AppIcons.theSims4Icon,
      packs: PackList.theSimsFourExpansionPacks,
    ),
  ];

// static final games = <GameModel>[
//   GameModel(
//     id: 2,
//     name: 'The Sims 2',
//     imageName: AppImages.theSims2Logo,
//     iconName: AppIcons.thesims2,
//     wishes: WishList.theSimsTwoWishes,
//     expansionPacks: ExpansionPackList.theSimsTwoExpansionPacks,
//   ),
//   GameModel(
//     id: 3,
//     name: 'The Sims 3',
//     imageName: AppImages.theSims3Logo,
//     iconName: AppIcons.theSims3VistaIconByAureltristenD228w8g,
//     wishes: WishList.theSimsThreeWishes,
//     expansionPacks: ExpansionPackList.theSimsThreeExpansionPacks,
//   ),
//   GameModel(
//     id: 4,
//     name: 'The Sims 4',
//     imageName: AppImages.sims4LogoPrimaryWhiteRgbTransparent1,
//     iconName: AppIcons.theSims4Icon,
//     wishes: WishList.theSimsFourWishes,
//     expansionPacks: ExpansionPackList.theSimsFourExpansionPacks,
//   ),
// ];
}
