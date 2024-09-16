import 'package:achievements/ui/widgets/game_selection/game_selection_widget.dart';
import 'package:achievements/ui/widgets/wishes/wishes_widget.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationRouteNames {
  static const games = '/';
  static const wishes = '/achievements_page';
}

class MainNavigation {

  final String initialRoute = MainNavigationRouteNames.games;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.games: (context) => GameSelectionWidget(),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.wishes:
        final gameConfiguration =
            settings.arguments as WishesWidgetConfiguration;
        return MaterialPageRoute(
          builder: (context) => WishesWidget(configuration: gameConfiguration),
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
