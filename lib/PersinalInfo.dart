import 'package:flutter/foundation.dart';
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

      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(10, 20, 0, 0)),
          child: Text("Name : Kim Kyle C. Marquez"
          style: TextStyle(color:Colors.white))
        ],
      )
    );
  }
}
