import 'package:flutter/cupertino.dart';

class GameSelectionWidgetModel {

  void showWishes(BuildContext context, int gameId) {
    Navigator.of(context)
        .pushNamed('/games/achievements_page', arguments: gameId);
  }
}

class GameSelectionWidgetModelProvider extends InheritedWidget {

  final GameSelectionWidgetModel model;

  const GameSelectionWidgetModelProvider ({
    super.key,
    required this.model,
    required super.child,
  });

  static GameSelectionWidgetModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GameSelectionWidgetModelProvider>();
  }

    static GameSelectionWidgetModelProvider? read(BuildContext context) {
    final widget = context.getElementForInheritedWidgetOfExactType<GameSelectionWidgetModelProvider>()?.widget;
    return widget is GameSelectionWidgetModelProvider ? widget : null;
  }

  @override
  bool updateShouldNotify(GameSelectionWidgetModelProvider oldWidget) {
    return true;
  }
}