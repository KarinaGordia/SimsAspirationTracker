import 'package:achievements/ui/navigation/main_navigation.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheSimsAspirationTracker',
      theme: baseTheme,
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}