import 'package:flutter/material.dart';

class SomniumTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final String prefixIcon;
  final String? suffixIcon;
  const SomniumTextField(
      {super.key,
      required this.title,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Color.fromRGBO(235, 235, 235, 1),
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(40, 39, 80, 1),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(94, 65, 225, 1),
                  spreadRadius: 1,
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: const TextStyle(),
              decoration: InputDecoration(
                prefixIcon: Image.asset(
                  prefixIcon,
                  width: 1,
                  height: 1,
                ),
                labelText: hintText,
                suffixIcon:
                    suffixIcon != null ? Image.asset(suffixIcon!) : null,
                labelStyle: const TextStyle(
                  color: Color.fromRGBO(235, 235, 235, 1),
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
