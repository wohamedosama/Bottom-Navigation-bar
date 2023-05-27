import 'package:bottom_nav_bar_practice_usama_in_youtube/page/add.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/discovery.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/message.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../page/home.dart';
import '../page/profile.dart';

class Circle extends StatefulWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
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
      body: _widgetOption.elementAt(currentIndex),
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: currentIndex,
        tabs: [
          TabData(icon: Icons.home, title: 'Home'),
          TabData(icon: Icons.map, title: 'Discovery'),
          TabData(icon: Icons.add, title: 'Add'),
          TabData(icon: Icons.chat_bubble_outline, title: 'Chats'),
          TabData(icon: Icons.people, title: 'People'),
        ],
        onTabChangedListener: changeItem,
      ),
    );
  }

  changeItem(int position) {
    setState(() {
      currentIndex = position;
    });
  }
}
