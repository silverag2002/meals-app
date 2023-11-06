import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';

class Recepie extends StatelessWidget {
  const Recepie({super.key, required this.title, required this.data});
  final String title;
  final List<Meal> data;
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          child: Column(
            children: [Text(data[0].title)],
          ),
        ));
  }
}
