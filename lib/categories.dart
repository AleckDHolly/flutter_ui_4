import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categories extends StatelessWidget {
  Categories({super.key});

  List<String> categories = [
    "All",
    "Mantras",
    "Meditation",
    "Sleep",
    "Relaxation",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...categories.map(
            (category) {
              return Padding(
                padding: EdgeInsets.only(
                    top: 1,
                    left: 10,
                    right: category == categories.last ? 10 : 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: category == categories.first
                        ? Colors.transparent
                        : Colors.grey,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: category == categories.first
                              ? Colors.white
                              : Colors.transparent),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    category,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
