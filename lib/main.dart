// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GYM APP',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(
            Icons.fitness_center,
            color: Colors.white, // Set icon color to white
          ),
          actions: [
            TextButton(
              onPressed: () {
                print('Home button pressed!');
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 12.5),
                child: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print('Workout button pressed!');
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 12.5, left: 12.5),
                child: Text(
                  'Workout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print('Profile button pressed!');
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 25, left: 12.5),
                child: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
          backgroundColor: Color.fromARGB(255, 29, 34, 40),
        ),
        body: Container(
          // This will cover the whole screen with the background image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bcgr.jpg"), // Path to your image
              fit: BoxFit.cover, // Cover the entire screen
            ),
          ),
          child: Center(
            child: Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 254, 16),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  'Start your journey now!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 30, 41, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
