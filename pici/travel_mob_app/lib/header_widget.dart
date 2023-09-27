import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(
                "Hi Sam",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 29),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            FittedBox(
              child: Text(
                "Let's Discover",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                    fontSize: 17),
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 8,
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/profile.jpeg",
              //width: 30,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
