import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:powerzone/screens/homescreen.dart';
import 'package:powerzone/screens/menuscreen.dart';

class HelperScreen extends StatefulWidget {
  const HelperScreen({super.key});

  @override
  State<HelperScreen> createState() => _HelperScreenState();
}

class _HelperScreenState extends State<HelperScreen> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      mainScreen: HomeScreen(),
      menuScreen: MenuScreen(),
      angle: -22,
      style: DrawerStyle.defaultStyle,
    );
  }
}
