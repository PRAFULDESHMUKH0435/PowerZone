import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'helperscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = new TextEditingController();
    TextEditingController userpassword = new TextEditingController();

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
                          suffixIcon: Icon(
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
                        print(username.toString());
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HelperScreen()));
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
