import 'dart:math';

import 'package:flutter/material.dart';
import 'package:profile/perfurm.dart';

import 'package:profile/perfurms.dart';
import 'package:profile/profile_Alice_Jack.dart';
import 'package:profile/category.dart';
import 'package:profile/profile_text_and_icons.dart';

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
            ProfileTextAndIcons(),
            SizedBox(
              height: 30,
            ),
            Profile(),
            SizedBox(
              height: 30,
            ),
            Category(),
            SizedBox(
              height: 30,
            ),
            Expanded(child: Perfurm()),
          ],
        ),
      ),
    );
  }
}
