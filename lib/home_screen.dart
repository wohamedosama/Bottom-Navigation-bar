import 'package:bottom_nav_bar_practice_usama_in_youtube/circle/circle.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/constants.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/convex/convex.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/curved/curved.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/floating/floating.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/normal/normal.dart';
import 'package:bottom_nav_bar_practice_usama_in_youtube/spin_circle/spin_circle.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorOfApp,
        title: const Text(
          'Bottom Nav Bar',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Normal()));
                },
                child: const Text(
                  "Normal",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 60,
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Circle()));
                },
                child: const Text(
                  "Circle",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 60,
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Convex()));
                },
                child: const Text(
                  "Convex",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 60,
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Curved()));
                },
                child: const Text(
                  "Curved",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 60,
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Floating()));
                },
                child: const Text(
                  "Floating",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 60,
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SpinCircle()));
                },
                child: const Text(
                  "SpinCircle",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
