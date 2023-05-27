import 'package:bottom_nav_bar_practice_usama_in_youtube/page/add.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/discovery.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/message.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../page/home.dart';
import '../page/profile.dart';

class Curved extends StatefulWidget {
  const Curved({Key? key}) : super(key: key);

  @override
  State<Curved> createState() => _CurvedState();
}

class _CurvedState extends State<Curved> {
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
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,
        onTap: changeItem,
        backgroundColor: colorOfApp,
        items: const <Widget>[
          Icon(
            Icons.add,
            size: 30,
          ),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
      ),
    );
  }

  void changeItem(int value) {
    setState(() {
      currentIndex = value;
    });
  }
}
