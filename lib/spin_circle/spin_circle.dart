import 'package:bottom_nav_bar_practice_usama_in_youtube/page/add.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/discovery.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/message.dart';
import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

import '../constants.dart';
import '../page/home.dart';
import '../page/profile.dart';

class SpinCircle extends StatefulWidget {
  const SpinCircle({Key? key}) : super(key: key);

  @override
  State<SpinCircle> createState() => _SpinCircleState();
}

class _SpinCircleState extends State<SpinCircle> {
  int currentIndex = 2;

  final List<Widget> _widgetOption = const [
    Home(),
    Discovery(),
    Add(),
    Message(),
    Profile(),
  ];

  List<String> title = [
    'Home',
    'Discovery',
    'Add',
    'Message',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorOfApp,
        title: Text(
          title[currentIndex],
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: SpinCircleBottomBarHolder(
        bottomNavigationBar: SCBottomBarDetails(
          items: [
            SCBottomBarItem(icon: Icons.add, onPressed: () {}),
            SCBottomBarItem(icon: Icons.notifications, onPressed: () {}),
            SCBottomBarItem(icon: Icons.map, onPressed: () {}),
            SCBottomBarItem(icon: Icons.class_, onPressed: () {}),
          ],
          circleItems: [
            SCItem(icon: const Icon(Icons.add), onPressed: () {}),
            SCItem(icon: const Icon(Icons.home), onPressed: () {}),
            SCItem(icon: const Icon(Icons.not_interested), onPressed: () {}),
          ],
          elevation: 0,
          circleColors: [
            Colors.deepPurple,
            Colors.orange,
            Colors.green,
          ],
        ),
        child: _widgetOption.elementAt(currentIndex),
      ),
    );
  }
}
