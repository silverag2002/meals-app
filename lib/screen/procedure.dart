import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';

class Procedure extends StatelessWidget {
  const Procedure({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
        ),
      ),
    );
  }
}
