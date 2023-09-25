import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShopCategoryText extends StatefulWidget {
  const ShopCategoryText({super.key});

  @override
  State<ShopCategoryText> createState() => _ShopCategoryTextState();
}

class _ShopCategoryTextState extends State<ShopCategoryText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Shop Category",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Icon(Icons.east),
      ],
    );
  }
}
