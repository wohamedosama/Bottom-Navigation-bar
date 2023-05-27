import 'package:bottom_nav_bar_practice_usama_in_youtube/page/add.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/discovery.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/message.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../page/home.dart';
import '../page/profile.dart';

class Floating extends StatefulWidget {
  const Floating({Key? key}) : super(key: key);

  @override
  State<Floating> createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
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
      bottomNavigationBar: FloatingNavbar(
        selectedBackgroundColor: colorOfApp,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.white,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.map, title: 'Discovery'),
          FloatingNavbarItem(icon: Icons.add, title: 'Add'),
          FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
          FloatingNavbarItem(icon: Icons.people, title: 'People'),
        ],
        currentIndex: currentIndex,
        onTap: changeItem,
      ),
    );
  }

  void changeItem(int val) {
    setState(() {
      currentIndex = val;
    });
  }
}
