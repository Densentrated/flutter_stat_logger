import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flat_list/flat_list.dart';

void main() {
  // stopping rendering in the status bar
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromARGB(255, 0, 0, 0), // Set status bar color to transparent
    statusBarIconBrightness: Brightness.light, // Set status bar icons to dark
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "stat_logger",
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container( // space for the mood flatlist
                height: MediaQuery.of(context).size.height * .60,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
              Container( // linear separator
                height: MediaQuery.of(context).size.height * .02,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .19,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .19,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
            ]
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MoodContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Container(
        height: 156,
        decoration: const BoxDecoration(
          color: Colors.orange,
        ),
      ),
    );
  }
}

class MoodData {
  EmotionalState currentEmotinalState;
  int feelings;
  int energy;
  int sleep;
  bool test;
  bool caffinated;
  bool hungry;
  bool watch;
  bool trouble;
  
  MoodData(this.currentEmotinalState, this.feelings, this.energy, this.sleep, this.test, this.caffinated, this.hungry, this.watch, this.trouble);
}

enum EmotionalState {contentness, joy, saddness, anger, fear}