import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  _HomeNavBarState createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: 2,
      items: [
        Icon(
          Icons.person_outline,
          size: 30,
        ), //index 0
        Icon(
          Icons.favorite_outline,
          size: 30,
        ), //index 1
        Icon(
          Icons.home,
          size: 30,
          color: Colors.redAccent,
        ), //index 2
        Icon(
          Icons.location_on_outlined,
          size: 30,
        ), //index 3
        Icon(
          Icons.list,
          size: 30,
        ), //index 4
      ],
    );
  }
}
