import 'package:categoryfood/fruit_cart_model.dart';
import 'package:categoryfood/fruit_carts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FruitCart extends StatefulWidget {
  const FruitCart({super.key});

  @override
  State<FruitCart> createState() => _FruitCartState();
}

class _FruitCartState extends State<FruitCart> {
  List<FruitCartModel> fruit = [
    FruitCartModel(
      reviews: "122 Reviews",
      cena: "\$4.99/kg",
      picture: "assets/papaya.jpg",
      nameFruit: "Papaya",
      sold: "110 sold",
    ),
    FruitCartModel(
      reviews: "122 Reviews",
      cena: "\$1.99/kg",
      picture: "assets/premiumgrape.jpg",
      nameFruit: "Premium Grape",
      sold: "12 sold",
    ),
    FruitCartModel(
      reviews: "122 Reviews",
      cena: "\$0.99/kg",
      picture: "assets/orange.jpg",
      nameFruit: "Premium Grape",
      sold: "12 sold",
    ),
    FruitCartModel(
      reviews: "122 Reviews",
      cena: "\$0.99/kg",
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
          return FruitCarts(
            e: e,
          );
        })
      ],
    );
  }
}
