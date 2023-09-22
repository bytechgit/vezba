import 'package:flutter/material.dart';
import 'package:profile/perfume_glass.dart';
import 'package:profile/profile_Alice_Jack.dart';
import 'package:profile/row_three_container.dart';

import 'first_row_cont_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: const [
            FirstRowContText(),
            SizedBox(
              height: 30,
            ),
            Profile(),
            SizedBox(
              height: 30,
            ),
            RowThreeContainer(),
            SizedBox(
              height: 30,
            ),
            Expanded(child: PerfumeGlass()),
          ],
        ),
      ),
    );
  }
}
