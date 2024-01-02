import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';
import 'package:meals_app/widgets/ingridents.dart';

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
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: NetworkImage(meal.imageUrl),
            ),
            const SizedBox(height: 4),
            Ingredient(title: "Ingredient", data: meal.ingredients),
            const SizedBox(height: 8),
            Ingredient(title: "Steps", data: meal.steps)
          ],
        ),
      )),
    );
  }
}
