import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget build(context) {
    return Drawer(
        child: Column(children: [
      DrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Theme.of(context).colorScheme.primaryContainer,
            Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Container(
              child: Row(children: [
            Icon(Icons.fastfood,
                size: 48, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 18),
            Text("Cooking Up!",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.primary)),
          ])))
    ]));
  }
}
