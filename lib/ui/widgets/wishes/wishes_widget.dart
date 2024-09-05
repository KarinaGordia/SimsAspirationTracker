import 'package:achievements/domain/entities/wish.dart';
import 'package:achievements/ui/widgets/filters/filters_widget.dart';
import 'package:achievements/ui/widgets/game_selection/game_selection_widget_model.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget_model.dart';
import 'package:flutter/material.dart';
import '../../../resources/resources.dart';

class WishesWidgetConfiguration {
  final int gameIndex;
  final String gameIconName;

  WishesWidgetConfiguration(
      {required this.gameIndex, required this.gameIconName});
}

class WishesWidget extends StatefulWidget {
  final WishesWidgetConfiguration configuration;

  const WishesWidget({super.key, required this.configuration});

  @override
  State<WishesWidget> createState() => _WishesWidgetState();
}

class _WishesWidgetState extends State<WishesWidget> {
  late final WishesWidgetModel _model;

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

  @override
  void dispose() async {
    super.dispose();
    await _model.dispose();
  }
}

class _WishesWidgetBody extends StatefulWidget {
  const _WishesWidgetBody();

  @override
  State<_WishesWidgetBody> createState() => _WishesWidgetBodyState();
}

class _WishesWidgetBodyState extends State<_WishesWidgetBody> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _gameModel = GameSelectionWidgetModel();

  @override
  Widget build(BuildContext context) {
    final wishesModel = WishesWidgetModelProvider.watch(context)?.model;
    final gameIcon = Image.asset(wishesModel?.configuration.gameIconName ??
        AppImages.build24dpFill0Wght400Grad0Opsz24);
    final filterConfiguration = FilterWidgetConfiguration(
        gameIndex: wishesModel!.configuration.gameIndex,
        filterIndex: wishesModel.filterIndex);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          GameSelectionWidgetModelProvider(
            model: _gameModel,
            child: GameSelectionMenu(
              gameIcon: gameIcon,
            ),
          ),
          IconButton(
            onPressed: () => wishesModel.openEndDrawer(_scaffoldKey),
            icon: const Icon(
              Icons.tune,
            ),
            iconSize: 30,
          ),
        ],
      ),
      body: WishListBuilder(
        wishList: wishesModel.wishes,
      ),
      endDrawer: SafeArea(
        child: FiltersWidget(configuration: filterConfiguration),
      ),
      // onEndDrawerChanged: (isOpen) {
      //   //wishesModel.filterWishes();
      //   //_refreshPage(isOpen);
      // },
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

class GameSelectionMenu extends StatelessWidget {
  final Image gameIcon;

  const GameSelectionMenu({super.key, required this.gameIcon});

  @override
  Widget build(BuildContext context) {
    final model = GameSelectionWidgetModelProvider.read(context)?.model;
    return MenuAnchor(
      builder:
          (BuildContext context, MenuController controller, Widget? child) {
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
        model!.games.length,
        (int index) => MenuItemButton(
          onPressed: () => model.showWishes(context, index),
          child: Text('The Sims ${index + 3}'),
        ),
      ),
    );
  }
}

class WishListBuilder extends StatelessWidget {
  const WishListBuilder({super.key, required this.wishList});

  final List<Wish> wishList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GridView.builder(
        itemCount: wishList.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 190,
          childAspectRatio: 0.85,
        ),
        itemBuilder: (BuildContext context, int index) =>
            WishCardWidget(wish: wishList[index]),
      ),
    );
  }
}

class WishCardWidget extends StatelessWidget {
  const WishCardWidget({super.key, required this.wish});

  final Wish wish;

  Color getWishCardColor() {
    if (!wish.isCompleted) {
      return const Color(0xFFD1CBC1);
    }

    return const Color(0xFFE1B047);
  }

  @override
  Widget build(BuildContext context) {
    final model = WishesWidgetModelProvider.watch(context)?.model;
    final packs = model?.packs;
    final packIcon = packs?[wish.packKey]?.imageName ??
        AppImages.build24dpFill0Wght400Grad0Opsz24;

    return Card.outlined(
      color: getWishCardColor(),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => model?.completeWish(wish),
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 5,
              width: 25,
              height: 25,
              child: Image.asset(packIcon),
            ),
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Image(
                    image: AssetImage(wish.imageName),
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
                          wish.name,
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
