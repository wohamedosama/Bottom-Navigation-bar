import 'package:bottom_nav_bar_practice_usama_in_youtube/constants.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const BottomNavBar());
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
