import 'package:flutter/material.dart';

class MealsTrait extends StatelessWidget {
  const MealsTrait({super.key, required this.icon, required this.duration});
  final IconData icon;
  final String duration;
  @override
  Widget build(context) {
    return (Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 6,
        ),
        Text(
          duration,
          style: const TextStyle(color: Colors.white),
        )
      ],
    ));
  }
}
