import 'package:categoryfood/fruit_card.dart';
import 'package:flutter/material.dart';

import 'models/fruit_card_model.dart';

class FruitsCard extends StatefulWidget {
  const FruitsCard({super.key});

  @override
  State<FruitsCard> createState() => _FruitsCardState();
}

class _FruitsCardState extends State<FruitsCard> {
  List<FruitCardModel> fruits = [
    FruitCardModel(
      reviews: "122 Reviews",
      price: "\$4.99/kg",
      picture: "assets/papaya.jpg",
      nameFruit: "Papaya",
      sold: "110 sold",
    ),
    FruitCardModel(
      reviews: "122 Reviews",
      price: "\$1.99/kg",
      picture: "assets/premiumgrape.jpg",
      nameFruit: "Premium Grape",
      sold: "12 sold",
    ),
    FruitCardModel(
      reviews: "122 Reviews",
      price: "\$0.99/kg",
      picture: "assets/orange.jpg",
      nameFruit: "Premium Grape",
      sold: "12 sold",
    ),
    FruitCardModel(
      reviews: "122 Reviews",
      price: "\$0.99/kg",
      picture: "assets/mango.jpg",
      nameFruit: "Sweet Mango",
      sold: "120 sold",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      childAspectRatio: 3 / 4,
      crossAxisSpacing: 10,
      children: [
        ...fruits.map((fruit) {
          return FruitCard(
            fruit: fruit,
          );
        })
      ],
    );
  }
}
