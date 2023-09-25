import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:carousel_slider/carousel_slider.dart';

class FruitSlider extends StatefulWidget {
  const FruitSlider({super.key});

  @override
  State<FruitSlider> createState() => _FruitSliderState();
}

class _FruitSliderState extends State<FruitSlider> {
  List<String> myItems = [
    "assets/fruit1.jpg",
    "assets/fruit2.jpg",
    "assets/fruit3.jpeg",
    "assets/fruit4.jpg",
  ];
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselSlider(
        items: myItems.map((e) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(e),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 220,
          enlargeCenterPage: true,
          aspectRatio: 20 / 9,
          viewportFraction: 0.72,
          onPageChanged: (index, reason) {
            setState(() {
              myCurrentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
