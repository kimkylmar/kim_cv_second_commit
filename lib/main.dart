import 'package:flutter/material.dart';
import 'package:kim_cv/PersinalInfo.dart';
import 'package:kim_cv/education.dart';
import 'package:kim_cv/skills.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(184, 209, 19, 123),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curriculum Vitae',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 190, 33, 112),
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/pic.jpg',
                  ),
                  radius: 70.0,
                ),
              ),
              const Divider(
                height: 50,
                color: Color.fromARGB(255, 255, 255, 255),
                thickness: 2,
              ),
              const Center(
                child: Text(
                  "Name:",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Kim Kyle C. Marquez",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              const Center(
                child: Text(
                  "Position 69:",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Technical Support",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              const Divider(
                height: 50,
                color: Color.fromARGB(255, 255, 255, 255),
                thickness: 2,
              ),
              const Center(
                child: Text(
                  "Contact me at:",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mail,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'kimkyle@gmail.com',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Icon(Icons.call, color: Color.fromARGB(255, 255, 255, 255)),
                  SizedBox(width: 8.0),
                  Text(
                    '09513270528',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 50,
                color: Color.fromARGB(255, 255, 255, 255),
                thickness: 2,
              ),
              const Center(
                child: Text(
                  "About",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PersonalInfo()))
                    },
                    icon: const Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  IconButton(
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const education()))
                    },
                    icon: const Icon(
                      Icons.school,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  IconButton(
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const skills()))
                    },
                    icon: const Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                ],
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
            ],
          )),
    );
  }
}
