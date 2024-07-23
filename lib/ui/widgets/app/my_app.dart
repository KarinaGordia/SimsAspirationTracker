import 'package:achievements/ui/navigation/main_navigation.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute,
      onGenerateRoute: mainNavigation.onGenerateRoute,
      // routes: {
      //   '/games': (context) => GameSelectionWidget(),
      //   //'/achievements_page' : (context) => AchievementsPage(gameId: null,),
      //   '/games/achievements_page': (context) {
      //     final arguments = ModalRoute.of(context)?.settings.arguments;
      //     if (arguments is int) {
      //       return AchievementsPageWidget(
      //         //gameId: arguments,
      //       );
      //     }
      //     return AchievementsPageWidget(
      //       // gameId: 0,
      //     );
      //   },
      // },
    );
  }
}