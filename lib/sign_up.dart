import 'package:flutter/material.dart';
import 'package:kim_cv/FormScreen.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class signUp extends StatefulWidget {
  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _formfield = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool passToggle = true;

  String passwordErrorText = "";
  String usernameErrorText = "";

  // Future<void> _signIn() async {
  //   // Perform password validation
  //   if (!_validatePassword(passController.text)) {
  //     setState(() {
  //       passwordErrorText =
  //           'Password must contain capital letters, numbers, special characters, and be at least 8 characters long.';
  //     });
  //     return;
  //   } else {
  //     setState(() {
  //       passwordErrorText = '';
  //     });
  //   }

  //   // Perform username validation
  //   if (!_validateUsername(usernameController.text)) {
  //     setState(() {
  //       usernameErrorText = 'Username must end with "@gmail.com"';
  //     });
  //     return;
  //   } else {
  //     setState(() {
  //       usernameErrorText = '';
  //     });
  //   }

  //   // Proceed with signup
  //   final response = await http.post(
  //     Uri.parse('http://localhost/registered_users/signup.php'),
  //     body: {
  //       'username': usernameController.text,
  //       'pass': passController.text,
  //     },
  //   );

  //   print('Server Response: ${response.body}');
  //   if (response.statusCode == 200) {
  //     final result = jsonDecode(response.body);
  //     print(result); // Print the entire response for debugging
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(result['message']),
  //       ),
  //     );
  //   } else {
  //     // Handle errors
  //     print('Error: ${response.statusCode}');
  //     print('Response body: ${response.body}');
  //   }
  // }
  Future<void> _signIn() async {
    final response = await http.post(
      Uri.parse('http://localhost/registered_users/signup.php'),
      body: {
        'username': usernameController.text,
        'pass': passController.text,
      },
    );

    print('Response: ${response.statusCode} - ${response.body}');

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(result['message']),
        ),
      );
    } else {
      // Handle errors
      print('Error: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }

  // Password validation function
  bool _validatePassword(String password) {
    // Add your password validation logic here
    // For example, requiring capital letters, numbers, special characters, and a minimum length of 8
    RegExp passwordRegExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    return passwordRegExp.hasMatch(password);
  }

  // Username validation function
  bool _validateUsername(String username) {
    // Add your username validation logic here
    // For example, requiring the username to end with "@gmail.com"
    return username.endsWith('@gmail.com');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Sign up Page',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 190, 33, 112),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: "Email or Username",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return "Enter Email";
                  //   }
                  //   bool emailValid = RegExp(
                  //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  //       .hasMatch(value);
                  //   if (!emailValid) {
                  //     return "Enter valid email";
                  //   }
                  // },
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: passController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return "Enter Password";
                  //   } else if (passContoller.text.length < 6) {
                  //     return "Password should be 6 characters and up";
                  //   } else if (!RegExp(
                  //           r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$')
                  //       .hasMatch(value)) {
                  //     return "Password must meet the requirements";
                  //   }
                  // },
                ),
                SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    _signIn();
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(184, 209, 19, 123),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FormScreen()));
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
