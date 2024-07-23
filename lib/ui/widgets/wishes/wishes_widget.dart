import 'package:achievements/domain/entities/wish.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget_model.dart';
import 'package:flutter/material.dart';

import '../../../resources/resources.dart';

class WishesWidget extends StatefulWidget {
  const WishesWidget({super.key, required this.gameIndex});

  final int gameIndex;

  @override
  State<WishesWidget> createState() => _WishesWidgetState();
}

class _WishesWidgetState extends State<WishesWidget> {
  late final WishesWidgetModel _model;

  @override
  void initState() {
    super.initState();
    _model = WishesWidgetModel(gameKey: widget.gameIndex);
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
    return Scaffold(
      appBar: AppBar(),
      body: WishListBuilder(
        wishList: model!.wishes,
      ),
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
