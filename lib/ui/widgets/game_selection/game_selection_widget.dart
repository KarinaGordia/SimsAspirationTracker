import 'package:achievements/app_game_lists/app_game_lists.dart';
import 'package:achievements/ui/widgets/game_selection/game_selection_widget_model.dart';
import 'package:flutter/material.dart';

class GameSelectionWidget extends StatelessWidget {
  GameSelectionWidget({super.key});

  final _model = GameSelectionWidgetModel();

  @override
  Widget build(BuildContext context) {
    return GameSelectionWidgetModelProvider(
      model: _model,
      child: const _GameSelectionWidgetBody(),
    );
  }
}

class _GameSelectionWidgetBody extends StatelessWidget {
  const _GameSelectionWidgetBody();

  @override
  Widget build(BuildContext context) {
    final model = GameSelectionWidgetModelProvider.read(context)?.model;
    return Scaffold(
      backgroundColor: const Color(0xFF748CAB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF748CAB),
        shape: LinearBorder.bottom(
          size: 0.9,
          side: const BorderSide(
            color: Color(0xff4e6685),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Select the game',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemCount: model?.games.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return _GameCard(
            indexInList: index,
          );
        },
      ),
    );
  }
}

class _GameCard extends StatelessWidget {
  final int indexInList;

  const _GameCard({required this.indexInList});

  @override
  Widget build(BuildContext context) {
    final model = GameSelectionWidgetModelProvider.read(context)!.model;
    final game = model.games[indexInList];

    return GestureDetector(
      onTap: () => GameSelectionWidgetModelProvider.read(context)
          ?.model
          .showWishes(context, indexInList),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Image(
          image: AssetImage(game.imageName),
        ),
      ),
    );
  }
}
