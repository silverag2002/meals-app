import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/screen/recepie.dart';

class SelectionScreen extends StatelessWidget {
  SelectionScreen({super.key});

  @override
  Widget build(context) {
    void navigateToScreen(cat) {
      var dMeals = dummyMeals
          .where((element) => element.categories.contains(cat.id))
          .toList();
      print("LENGTH ${dMeals.length}");

      Navigator.of(context).push(MaterialPageRoute(
          builder: (ctx) => Recepie(title: cat.title, data: dMeals)));
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Pick your Category"),
        ),
        body: GridView(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            for (final category in availableCategories)
              InkWell(
                  onTap: () {
                    navigateToScreen(category);
                  },
                  splashColor: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                              colors: [
                                category.color.withOpacity(0.55),
                                category.color.withOpacity(0.9)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)),
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        category.title,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onBackground),
                      ))),
          ],
        ));
  }
}
