import 'package:flutter/material.dart';
import 'package:flutter_ui_4/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.limeAccent,
        ),
        useMaterial3: true,
      ),
      home: const Intro(),
    );
  }
}
