import 'package:championtrophy/body_widget.dart';
import 'package:championtrophy/header_widget.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 68, 82),
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(),
            SizedBox(
              height: 20,
            ),
            BodyWidget(),
          ],
        ),
      ),
    );
  }
}
