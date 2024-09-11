import 'package:flutter/material.dart';

//const primaryColor = Color(0xFF4e7cb2);
const primaryColor = Color(0xFF8ea05d);
final baseTheme = ThemeData(
  //primaryColor: primaryColor,
  //colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(letterSpacing: 3, fontSize: 20, color: Color(0xff3d4b58), fontWeight: FontWeight.w500),
    labelMedium: TextStyle(fontSize: 16, color: Color(0xff3d4b58),)
  ),
  filledButtonTheme: const FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll<Color?>(Color(0xFF315d93)),
      textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w500),)
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color(0xfff7f6ee),
  ),
  chipTheme: const ChipThemeData(
    //backgroundColor: Color(0xfffcd89e),
    selectedColor: Color(0xfffca806),
    elevation: 1.5,
    pressElevation: 2,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    labelStyle: TextStyle(fontSize: 16, color: Color(0xff3d4b58),),
    secondaryLabelStyle: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w500),),
  );