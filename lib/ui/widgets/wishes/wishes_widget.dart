import 'package:achievements/domain/entities/wish.dart';
import 'package:achievements/ui/widgets/game_selection/game_selection_widget_model.dart';
import 'package:achievements/ui/widgets/wishes/general_model.dart';
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
  late final GeneralModel _model;

  @override
  void initState() {
    super.initState();
    _model = GeneralModel(
        wishesWidgetModel:
            WishesWidgetModel(configuration: widget.configuration),
        gameWidgetModel: GameSelectionWidgetModel());
  }

  @override
  Widget build(BuildContext context) {
    return GeneralModelProvider(
      model: _model,
      child:  _WishesWidgetBody(),
    );
  }
}

class _WishesWidgetBody extends StatefulWidget {
    _WishesWidgetBody({super.key});

  @override
  State<_WishesWidgetBody> createState() => _WishesWidgetBodyState();
}

class _WishesWidgetBodyState extends State<_WishesWidgetBody> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final model = GeneralModelProvider.read(context)?.model;
    final gameModel = model?.gameWidgetModel;
    final wishesModel = model?.wishesWidgetModel;
    final gameIcon = Image.asset(wishesModel?.configuration.gameIconName ??
        AppImages.build24dpFill0Wght400Grad0Opsz24);

    return Scaffold(
      key:_scaffoldKey,
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
              gameModel!.games.length,
              (int index) => MenuItemButton(
                onPressed: () => gameModel.showWishes(context, index),
                child: Text('The Sims ${index + 2}'),
              ),
            ),
          ),
          IconButton(
            onPressed: () => wishesModel?.openEndDrawer(_scaffoldKey),
            icon: const Icon(
              Icons.tune,
            ),
            iconSize: 30,
          ),
        ],
      ),
      body: WishListBuilder(
        wishList: wishesModel!.wishes,
      ),
      endDrawer: SafeArea(child: Drawer()),
      // endDrawer: const SafeArea(
      //   child: Drawer(),
      //   // child: FilterMenuWidget(
      //   //   filteringList: _displayedWishes,
      //   //   toggledPacks: _toggledPacks,
      //   //   game: _selectedGame!,
      //   //   onFilterButtonTap: () {
      //   //     setState(() {});
      //   //   },
      //   // ),
      // ),
    );
  }
}

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
