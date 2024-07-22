import 'package:achievements/widgets/game_selection/game_selection_widget.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/games': (context) => GameSelectionWidget(),
        //'/achievements_page' : (context) => AchievementsPage(gameId: null,),
        // '/games/achievements_page': (context) {
        //   final arguments = ModalRoute.of(context)?.settings.arguments;
        //   if (arguments is int) {
        //     return AchievementsPageWidget(
        //       gameId: arguments,
        //     );
        //   }
        //   return AchievementsPageWidget(
        //     gameId: 0,
        //   );
        // },
      },
      initialRoute: '/games',
    );
  }
}