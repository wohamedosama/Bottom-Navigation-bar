import 'package:flutter/material.dart';

const colorOfApp = Colors.deepPurple;

const unSelectedColors = Colors.grey;

ThemeData getAppTheme() {
  return ThemeData(
    primarySwatch: colorOfApp,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: colorOfApp,
      selectedItemColor: colorOfApp,
      unselectedItemColor: unSelectedColors,
    ),
  );
}
