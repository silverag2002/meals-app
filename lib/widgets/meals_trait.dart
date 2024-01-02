import 'package:flutter/material.dart';

class MealsTrait extends StatelessWidget {
  const MealsTrait({super.key, required this.icon, required this.duration});
  final IconData icon;
  final String duration;
  @override
  Widget build(context) {
    return (Row(
      children: [
        Icon(
          icon,
          size: 17,
          color: Colors.white,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          duration,
          style: const TextStyle(color: Colors.white),
        )
      ],
    ));
  }
}
