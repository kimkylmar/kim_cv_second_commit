import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(184, 209, 19, 123),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Personal Information',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 190, 33, 112),
      ),
      body: const Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/pic.jpg',
                  ),
                  radius: 70.0,
                ),
              ),
              Divider(
                height: 20,
                color: Color.fromARGB(255, 255, 255, 255),
                thickness: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("Name : Kim Kyle C. Marquez",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("Age : 21 years old",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("Sex : Female",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("Birthday : December 31, 2001",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("Religion: Roman Catholic",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("Height : 163 cm",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("Weight : 50 Kilograms",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("Hobbies:",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("     Reading",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("     Talking",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Text("     Cooking",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ))),
                ],
              ),
            ],
          )),
    );
  }
}
