import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainCategory extends StatelessWidget {
  MainCategory({super.key});

  List<String> plans = [
    "Affirmation",
    "Mediation",
    "Mantras",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blueGrey.withOpacity(0.5),
                const Color.fromARGB(51, 0, 0, 0),
                Colors.blueGrey.withOpacity(0.5),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Plan for \nthe day",
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite_border_outlined,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ...plans.map(
                    (category) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          leading: category == plans.first
                              ? Icon(Icons.check_box)
                              : Icon(Icons.check_box_outline_blank),
                          title: Text(
                            category,
                            style: const TextStyle(fontSize: 11),
                          ),
                          tileColor: category == plans.first
                              ? Colors.red
                              : Colors.grey,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blueGrey.withOpacity(0.5),
                const Color.fromARGB(51, 0, 0, 0),
                Colors.blueGrey.withOpacity(0.5),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sleep \nMeditation",
                    style: TextStyle(fontSize: 25),
                  ),
                  Divider(
                    height: 20,
                    color: Colors.transparent,
                  ),
                  Text("7 days Audio Series")
                ],
              ),
            ),
          ),
        )),
      ],
    );
  }
}
