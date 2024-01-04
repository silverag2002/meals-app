import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/screen/dashboard.dart';
import 'package:meals_app/screen/recepie.dart';
import 'package:meals_app/screen/main_drawer.dart';

class SelectionScreen extends StatefulWidget {
  SelectionScreen({super.key});
  State<SelectionScreen> createState() {
    return _SelectionScreenState();
  }
}

class _SelectionScreenState extends State<SelectionScreen> {
  int _selectedNavItem = 0;

  void changeScreen(int index) {
    setState(() {
      _selectedNavItem = index;
    });
  }

  @override
  Widget build(context) {
    Widget displayScreen = Dashboard();
    String finalTitle = "Pick your Category";
    if (_selectedNavItem == 1) {
      displayScreen = const Recepie(title: "Favorites", data: []);
      finalTitle = "Favorites";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(finalTitle),
      ),
      body: displayScreen,
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedNavItem,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites")
        ],
        onTap: changeScreen,
      ),
    );
  }
}
