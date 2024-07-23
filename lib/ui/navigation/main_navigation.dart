import 'package:achievements/achievements_page/achievement_page.dart';
import 'package:achievements/ui/widgets/game_selection/game_selection_widget.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationRouteNames {
  static const games = '/games';
  static const wishes = '/games/achievements_page';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteNames.games;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.games: (context) => GameSelectionWidget(),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.wishes:
        final gameIndex = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) => AchievementsPageWidget(gameIndex: gameIndex),
        );
      default:
        const widget = Scaffold(
          body: SafeArea(
            child: Text('Navigation Error!'),
          ),
        );
        return MaterialPageRoute(
          builder: (context) => widget,
        );
    }
  }
}