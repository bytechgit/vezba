import 'package:flutter/material.dart';

class UsuallyBuy extends StatefulWidget {
  const UsuallyBuy({super.key});

  @override
  State<UsuallyBuy> createState() => _UsuallyBuyState();
}

class _UsuallyBuyState extends State<UsuallyBuy> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Usually Buy",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Icon(Icons.east),
      ],
    );
  }
}
