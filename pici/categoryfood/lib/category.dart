import 'package:categoryfood/models/category_model.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<CategoryModel> categorys = [
    CategoryModel(
      nameCategory: "All",
      picture: "assets/all.png",
    ),
    CategoryModel(
      nameCategory: "Vegan",
      picture: "assets/vegan.png",
    ),
    CategoryModel(
      nameCategory: "Fruits",
      picture: "assets/f.png",
    ),
    CategoryModel(
      nameCategory: "Meat",
      picture: "assets/eggs.jpg",
    ),
    CategoryModel(nameCategory: "Eggs", picture: "assets/vegan.png"),
    CategoryModel(
      nameCategory: "Fruits",
      picture: "assets/f.png",
    ),
    CategoryModel(
      nameCategory: "Fruits",
      picture: "assets/f.png",
    ),
    CategoryModel(
      nameCategory: "Meat",
      picture: "assets/eggs.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shop Category",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Icon(Icons.east),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...categorys.map(
              (category) {
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
                            image: AssetImage(category.picture),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      category.nameCategory,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                );
              },
            ),
          ]),
        ),
      ],
    );
  }
}
//asmap se koristi da pretvori listu u mapu a pozivamo entries metode kako bismo dobili parove kljuc vrednost za svaki element u mapi
//primer za asmap ["a,"b"], = {0:a1}