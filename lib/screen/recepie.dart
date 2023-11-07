import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';
import 'package:transparent_image/transparent_image.dart';

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
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (ctx, index) => Card(
                  child: InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          FadeInImage(
                              placeholder: MemoryImage(kTransparentImage),
                              image: NetworkImage(data[index].imageUrl)),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.black54),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      data[index].title,
                                      maxLines: 2,
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ))
                                  ],
                                ),
                              ))
                        ],
                      )))),
        ));
  }
}
