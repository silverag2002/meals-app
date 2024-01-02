import 'package:flutter/material.dart';

class Ingredient extends StatelessWidget {
  const Ingredient({super.key, required this.title, required this.data});
  final String title;
  final List<String> data;
  @override
  Widget build(context) {
    return (Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(title,
                //   style: const TextStyle(
                //       color: Color.fromARGB(255, 255, 135, 7), fontSize: 25),
                // ),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.primary)),
            const SizedBox(height: 6),
            for (final val in data)
              Text(
                val,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
          ],
        )));
  }
}
