import 'package:flutter/material.dart';

class education extends StatelessWidget {
  const education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(184, 209, 19, 123),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Educational Attainment',
            ),
          ),
          backgroundColor: Color.fromARGB(255, 190, 33, 112),
        ),
        body: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons
                          .school, // You can choose a suitable icon (school icon)
                      color: Colors.white, // Set the icon's color
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Elementary Education :",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Text(
                    "Calmay Elementary School",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons
                          .school, // You can choose a suitable icon (school icon)
                      color: Colors.white, // Set the icon's color
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Secondary Education (JHS & SHS) :",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Text(
                    "Dagupan City National High School",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons
                          .school, // You can choose a suitable icon (school icon)
                      color: Colors.white, // Set the icon's color
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Tertiary Education :",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Text(
                    "Philippine College of Science and Technology",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ]));
  }
}
