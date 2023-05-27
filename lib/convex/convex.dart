import 'package:bottom_nav_bar_practice_usama_in_youtube/page/add.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/discovery.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/home.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/message.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/profile.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Convex extends StatefulWidget {
  const Convex({Key? key}) : super(key: key);

  @override
  State<Convex> createState() => _ConvexState();
}

int currentIndex = 2;
const List<Widget> _widgetOption = [
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

class _ConvexState extends State<Convex> {
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
      body: _widgetOption.elementAt(currentIndex),
      bottomNavigationBar: ConvexAppBar.badge(
        const {
          3: '99',
          4: Icons.assistant_photo,
        },
        badgeMargin: const EdgeInsets.only(bottom: 35, right: 35),
        backgroundColor: colorOfApp,
        activeColor: Colors.black54,
        style: TabStyle.flip,
        color: Colors.grey,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: currentIndex,
        onTap: changeItem,
      ),
    );
  }

  void changeItem(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
