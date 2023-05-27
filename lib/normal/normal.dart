import 'package:bottom_nav_bar_practice_usama_in_youtube/constants.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/add.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/discovery.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/home.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/message.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/page/profile.dart';
import 'package:flutter/material.dart';

class Normal extends StatefulWidget {
  const Normal({Key? key}) : super(key: key);

  @override
  State<Normal> createState() => _NormalState();
}

class _NormalState extends State<Normal> {
  int currentIndex = 0;
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
        body: _widgetOption[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.map), label: "Discovery"),
    BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
    BottomNavigationBarItem(
    icon: Icon(Icons.messenger), label: "Message"),
    BottomNavigationBarItem(icon: Icon(Icons.people), label: "Profile"),
    ],
    currentIndex: currentIndex,
    onTap: changeItem
    ,
    )
    ,
    );
  }

  void changeItem(int value) {
    setState(() {
      currentIndex = value;
    });
  }
}
