import 'package:flutter/material.dart';
import 'package:login_ui/navigator/catageroy.dart';
import 'package:login_ui/navigator/order.dart';
import 'package:login_ui/navigator/product.dart';
import 'package:login_ui/navigator/profile.dart';

class Bar extends StatefulWidget {
  const Bar({super.key});

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  int _currentIdex = 0;

  final tabs = [
    Order(),
    Catageroy(),
    Product(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIdex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIdex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.amber,
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              backgroundColor: Colors.green,
              label: "catageroy"),
          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits),
              backgroundColor: Colors.purple,
              label: "product"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.blue,
              label: "Profile"),
        ],
        onTap: (index) {
          setState(() {
            _currentIdex = index;
          });
        },
      ),
    );
  }
}
