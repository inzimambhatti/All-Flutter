import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
class ConvextBottomNavigation extends StatefulWidget {
  const ConvextBottomNavigation({Key? key}) : super(key: key);

  @override
  _ConvextBottomNavigationState createState() => _ConvextBottomNavigationState();
}

class _ConvextBottomNavigationState extends State<ConvextBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return  ConvexAppBar.badge(

      {0: '99+', 1: Icons.assistant_photo, 2: Colors.redAccent},
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.map, title: 'Discovery'),
        TabItem(icon: Icons.add, title: 'Add'),
        TabItem(icon: Icons.message, title: 'bhattie'),
        TabItem(icon: Icons.people, title: 'inzimam'),
      ],
      initialActiveIndex: 2,//optional, default as 0
      onTap: (int i) => print('click index=$i'),
    );
  }
}
