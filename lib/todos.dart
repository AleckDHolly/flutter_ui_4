import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDos extends StatelessWidget {
  ToDos({
    super.key,
    required this.title,
    required this.button1,
    required this.button2,
    required this.button3,
    required this.tileColor,
    required this.textColor,
    required this.playColor,
    required this.btnColor,
  });
  String title;
  String button1;
  String button2;
  String button3;
  Color tileColor;
  Color textColor;
  Color playColor;
  Color btnColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        tileColor: tileColor.withOpacity(0.7),
        title: Text(
          title,
          style: TextStyle(color: textColor),
        ),
        subtitle: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(2),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  button1,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  button2,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  button3,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        trailing: Container(
          decoration: BoxDecoration(
              color: btnColor, borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.play_arrow,
              size: 40,
              color: playColor,
            ),
          ),
        ),
      ),
    );
  }
}
