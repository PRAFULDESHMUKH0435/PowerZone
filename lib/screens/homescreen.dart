import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Power Zone"),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.red,
        child: Center(child: Text("I AM MAIN PAGE")),
      ),
    );
  }
}
