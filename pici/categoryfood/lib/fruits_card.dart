import 'package:categoryfood/fruit_card.dart';
import 'package:flutter/material.dart';

import 'models/fruit_cart_model.dart';

class FruitCard extends StatefulWidget {
  const FruitCard({super.key});

  @override
  State<FruitCard> createState() => _FruitCardState();
}

class _FruitCardState extends State<FruitCard> {
  List<FruitCartModel> fruit = [
    FruitCartModel(
      reviews: "122 Reviews",
      price: "\$4.99/kg",
      picture: "assets/papaya.jpg",
      nameFruit: "Papaya",
      sold: "110 sold",
    ),
    FruitCartModel(
      reviews: "122 Reviews",
      price: "\$1.99/kg",
      picture: "assets/premiumgrape.jpg",
      nameFruit: "Premium Grape",
      sold: "12 sold",
    ),
    FruitCartModel(
      reviews: "122 Reviews",
      price: "\$0.99/kg",
      picture: "assets/orange.jpg",
      nameFruit: "Premium Grape",
      sold: "12 sold",
    ),
    FruitCartModel(
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
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      childAspectRatio: 3 / 4,
      crossAxisSpacing: 10,
      children: [
        ...fruit.map((e) {
          return FruitCards(
            e: e,
          );
        })
      ],
    );
  }
}
