import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';
import 'package:meals_app/widgets/meals_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class Recepie extends StatelessWidget {
  const Recepie({super.key, required this.title, required this.data});
  final String title;
  final List<Meal> data;

  String firstLetterCapital(String word) {
    print("OWRD '${word}");
    return word[0].toUpperCase() + word.substring(1);
  }

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (ctx, index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(16),
                  elevation: 2,
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          FadeInImage(
                            placeholder: MemoryImage(kTransparentImage),
                            image: NetworkImage(data[index].imageUrl),
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                decoration:
                                    const BoxDecoration(color: Colors.black54),
                                child: Column(
                                  children: [
                                    Text(
                                      data[index].title,
                                      maxLines: 2,
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        MealsTrait(
                                            icon: Icons.schedule,
                                            duration:
                                                '${data[index].duration} min'),
                                        const SizedBox(width: 18),
                                        MealsTrait(
                                            icon: Icons.work,
                                            duration:
                                                '${firstLetterCapital(data[index].complexity.name.toString())} '),
                                        const SizedBox(width: 18),
                                        MealsTrait(
                                            icon: Icons.attach_money,
                                            duration:
                                                '${firstLetterCapital(data[index].affordability.name.toString())} ')
                                      ],
                                    )
                                  ],
                                ),
                              ))
                        ],
                      )))),
        ));
  }
}
