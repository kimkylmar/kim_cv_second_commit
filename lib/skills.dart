import 'package:flutter/material.dart';

class skills extends StatelessWidget {
  const skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(184, 209, 19, 123),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Skills',
            ),
          ),
          backgroundColor: Color.fromARGB(255, 190, 33, 112),
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text("Communication Skills",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ))),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.speaker_notes, // You can choose a suitable icon
                    color: Colors.white, // Set the icon's color
                  ),
                  SizedBox(
                      width: 8), // Add some spacing between the icon and text
                  Text(
                    "Good at Public Speaking",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Text(
                "Programming Languages:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.check, // You can choose a suitable icon
                    color: Colors.white, // Set the icon's color
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Python",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.check, // You can choose a suitable icon
                    color: Colors.white, // Set the icon's color
                  ),
                  SizedBox(width: 8),
                  Text(
                    "C++",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.check, // You can choose a suitable icon
                    color: Colors.white, // Set the icon's color
                  ),
                  SizedBox(width: 8),
                  Text(
                    "PHP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
