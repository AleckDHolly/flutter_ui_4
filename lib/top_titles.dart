import 'package:flutter/material.dart';

class TopTitles extends StatelessWidget {
  const TopTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            '🌺 Courses'.toUpperCase(),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "My practical plan",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ],
    );
  }
}
