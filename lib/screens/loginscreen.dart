import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:powerzone/services/Service.dart';
import 'helperscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = new TextEditingController();
    TextEditingController userpassword = new TextEditingController();
    FirebaseAuth auth = FirebaseAuth.instance;

    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Lottie.asset('assets/raw/splash2.json'),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      controller: username,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.account_circle,
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          hintText: "Enter  UserName",
                          label: Text("UserName"),
                          fillColor: Colors.grey[200],
                          filled: true),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      controller: userpassword,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          hintText: "Enter  Password",
                          label: Text("Password"),
                          fillColor: Colors.grey[200],
                          filled: true),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        auth
                            .createUserWithEmailAndPassword(
                                email: username.text.toString().trim(),
                                password: userpassword.text.toString().trim())
                            .then((value) =>
                                Services().showtoast("Successfuly Registered"))
                            .onError((error, stackTrace) =>
                                Services().showtoast(error.toString()));
                      },
                      child: Text(
                        "Submit",
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void CheckCredentails(String user_name, String user_password) {
  String name = "user";
  String pass = "Pass@12345";
}
