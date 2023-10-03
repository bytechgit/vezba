import 'package:flutter/material.dart';

class BottoMStackButton extends StatefulWidget {
  const BottoMStackButton({super.key});

  @override
  State<BottoMStackButton> createState() => _BottoMStackButtonState();
}

class _BottoMStackButtonState extends State<BottoMStackButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Positioned(
          left: 10,
          bottom: 0,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black,
            ),
            child: const Icon(
              Icons.system_update_alt,
              color: Colors.white,
              size: 17,
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 70,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Start Learning",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
