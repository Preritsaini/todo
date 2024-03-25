import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_list_project/screens/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO DO LIST',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Delayed navigation function
    Future<void> _navigateDelayed() async {
      await Future.delayed(const Duration(seconds: 2)); // Delay for 3 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => home(),
        ),
      );
    }

    // Call the delayed navigation function when the widget is built
    _navigateDelayed();

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 300,
        ),
      ),
    );
  }
}

