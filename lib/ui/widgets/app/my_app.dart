import 'package:achievements/repositories/settings/settings_repository.dart';
import 'package:achievements/ui/navigation/main_navigation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../theme/theme.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  final SharedPreferences preferences;

  const MyApp({super.key, required this.preferences});

  @override
  Widget build(BuildContext context) {
    final settingsRepository = SettingsRepository(preferences: preferences);
    return MaterialApp(
      title: 'TheSimsAspirationTracker',
      theme: baseTheme,
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}