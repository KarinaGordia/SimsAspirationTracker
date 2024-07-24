import 'package:achievements/domain/entities/wish.dart';
import 'package:achievements/ui/widgets/game_selection/game_selection_widget_model.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget_model.dart';
import 'package:flutter/material.dart';

import '../../../resources/resources.dart';

class WishesWidgetConfiguration {
  final int gameKey;
  final String gameIconName;

  WishesWidgetConfiguration(
      {required this.gameKey, required this.gameIconName});
}

class WishesWidget extends StatefulWidget {
  const WishesWidget({super.key, required this.configuration});

  final WishesWidgetConfiguration configuration;

  @override
  State<WishesWidget> createState() => _WishesWidgetState();
}

class _WishesWidgetState extends State<WishesWidget> {
  late final WishesWidgetModel _model;
  final _gameModel = GameSelectionWidgetModel();

  @override
  void initState() {
    super.initState();
    _model = WishesWidgetModel(configuration: widget.configuration);
  }

  @override
  Widget build(BuildContext context) {
    return WishesWidgetModelProvider(
      model: _model,
      child: const _WishesWidgetBody(),
    );
  }
}

class _WishesWidgetBody extends StatelessWidget {
  const _WishesWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    final model = WishesWidgetModelProvider.read(context)?.model;
    final gameIcon = Image.asset(model?.configuration.gameIconName ??
        AppImages.build24dpFill0Wght400Grad0Opsz24);
    return Scaffold(
      appBar: AppBar(
        actions: [
          MenuAnchor(
            builder: (BuildContext context, MenuController controller,
                Widget? child) {
              return IconButton(
                onPressed: () {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                },
                icon: gameIcon,
                tooltip: 'Change the game',
              );
            },
            alignmentOffset: const Offset(-24, 0),
            menuChildren: List<MenuItemButton>.generate(
              model.wishes..length,
              (int index) => MenuItemButton(
                onPressed: () {
                  // final id = GameList.games[index].id;
                  // print('page with index $id was update');
                  // Navigator.of(context)
                  //     .pushReplacementNamed('/games/achievements_page', arguments: id);
                },
                child: Text('The Sims ${index + 2}'),
              ),
            ),
          ),
        ],
      ),
      body: WishListBuilder(
        wishList: model!.wishes,
      ),
    );
  }
}

// class ChangeTheGameMenuAnchor extends StatefulWidget {
//   const ChangeTheGameMenuAnchor({super.key, required this.game});
//
//   final GameModel game;
//
//   @override
//   State<ChangeTheGameMenuAnchor> createState() =>
//       _ChangeTheGameMenuAnchorState();
// }
//
// class _ChangeTheGameMenuAnchorState extends State<ChangeTheGameMenuAnchor> {
//   // SampleItem? selectedMenu;
//   // SampleItem? initialMenu;
//
//   @override
//   Widget build(BuildContext context) {
//     return MenuAnchor(
//       builder:
//           (BuildContext context, MenuController controller, Widget? child) {
//         return IconButton(
//           onPressed: () {
//             if (controller.isOpen) {
//               controller.close();
//             } else {
//               controller.open();
//             }
//           },
//           icon: Image.asset(widget.game.iconName),
//           tooltip: 'Change the game',
//         );
//       },
//       alignmentOffset: const Offset(-24, 0),
//       menuChildren: List<MenuItemButton>.generate(
//         GameList.games.length,
//         (int index) => MenuItemButton(
//           onPressed: () {
//             // final id = GameList.games[index].id;
//             // print('page with index $id was update');
//             // Navigator.of(context)
//             //     .pushReplacementNamed('/games/achievements_page', arguments: id);
//           },
//           child: Text('The Sims ${index + 2}'),
//         ),
//       ),
//     );
//   }
// }

class WishListBuilder extends StatelessWidget {
  const WishListBuilder({super.key, required this.wishList});

  final List<Wish> wishList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: wishList.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 190,
        childAspectRatio: 0.85,
      ),
      itemBuilder: (BuildContext context, int index) =>
          WishCardWidget(wish: wishList[index]),
    );
  }
}

class WishCardWidget extends StatefulWidget {
  const WishCardWidget({super.key, required this.wish});

  final Wish wish;

  @override
  State<WishCardWidget> createState() => _WishCardWidgetState();
}

class _WishCardWidgetState extends State<WishCardWidget> {
  Image _getExpansionPackImage() {
    return Image.asset(AppImages.build24dpFill0Wght400Grad0Opsz24);
  }

  Color getWishCardColor() {
    if (!widget.wish.isCompleted) {
      return const Color(0xFFD1CBC1);
    }

    return const Color(0xFFE1B047);
  }

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      color: getWishCardColor(),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 5,
              width: 25,
              height: 25,
              child: _getExpansionPackImage(),
            ),
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Image(
                    image: AssetImage(widget.wish.imageName),
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
                          widget.wish.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 13.5),
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
