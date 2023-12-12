import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:async';
import 'SecondScreen.dart';
import 'package:flutter/rendering.dart';
import 'Suggestions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<MyHomePage> {
  var listQuotes = [
    //η λιστα με τα quote που θα εμφανισουμε
    "I am improving all time",
    "Listen to emotions but also evaluate",
    "Trying hard will get me what I want",
    "Each day is a new day. Try again",
  ];
  Random random = new Random();

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(listQuotes[random.nextInt(4)]),
            ],
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
