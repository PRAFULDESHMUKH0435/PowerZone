import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            width: double.infinity,
            color: Colors.yellow,
          );
        },
      ),
    );
  }
}
