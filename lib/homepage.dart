import 'package:flutter/material.dart';
import 'package:flutter_ui_4/categories.dart';
import 'package:flutter_ui_4/main_categories.dart';
import 'package:flutter_ui_4/todos.dart';
import 'package:flutter_ui_4/top_titles.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 197, 218, 9), Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopTitles(),
                  Categories(),
                  MainCategory(),
                  ToDos(
                    title: "Affirmations to close your day",
                    button1: "15 min",
                    button2: "Evening",
                    button3: "Relax",
                    tileColor: Colors.grey,
                    textColor: Colors.white,
                    playColor: Colors.black,
                    btnColor: Colors.limeAccent,
                  ),
                  ToDos(
                    title: "Meditaion to deep sleep",
                    button1: "10 min",
                    button2: "Sleep",
                    button3: "Evening",
                    tileColor: Colors.white,
                    textColor: Colors.black,
                    playColor: Colors.white,
                    btnColor: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
