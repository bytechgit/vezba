import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> myCategory = [
    "assets/all.png",
    "assets/vegan.png",
    "assets/f.png",
    "assets/eggs.jpg",
    "assets/meat.jpg",
    "assets/f.png",
    "assets/eggs.jpg",
    "assets/meat.jpg",
  ];
  List<String> tekstFruits = [
    "All",
    "Vegan",
    "Fruits",
    "Meat",
    "Eggs",
    "Fruits",
    "Meat",
    "Eggs",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: myCategory.asMap().entries.map((entry) {
          final int index = entry
              .key; //izvlaci index trenutnog elementa iz liste iz liste mycategory znaci index sadrzi poziciju trenutnog elementa
          final String imagePath =
              entry.value; //izvlaci vrednost trenutnog elementa
          final String text =
              (index < tekstFruits.length) ? tekstFruits[index] : '';

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
//asmap se koristi da pretvori listu u mapu a pozivamo entries metode kako bismo dobili parove kljuc vrednost za svaki element u mapi
//primer za asmap ["a,"b"], = {0:a1}