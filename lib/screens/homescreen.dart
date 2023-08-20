import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: AppBar(
        title: Text(
          "Power Zone",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
        leading: IconButton(
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),

      // BODY
      body: Container(
        color: Colors.yellow,
        child: Center(child: Text("HOME SCREEN")),
      ),

      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.yellow,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.account_balance_wallet_sharp,
            size: 30,
          ),
          Icon(Icons.add_chart_sharp, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
