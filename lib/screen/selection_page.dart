import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/screen/dashboard.dart';
import 'package:meals_app/screen/recepie.dart';

class SelectionScreen extends StatelessWidget {
  SelectionScreen({super.key});

  @override
  Widget build(context) {
    final _selcetedNavItem = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick your Category"),
      ),
      body: Dashboard(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.set_meal), label: "Categories"),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites")
      ]),
    );
  }
}
