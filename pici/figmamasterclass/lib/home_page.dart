import 'package:figmamasterclass/bottom_stack_card.dart';
import 'package:figmamasterclass/course_widget.dart';
import 'package:figmamasterclass/header_stack_widget.dart';

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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Stack(children: [
            Positioned.fill(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    HeaderStackWidget(),
                    SizedBox(
                      height: 12,
                    ),
                    CourseWidget(),
                  ],
                ),
              ),
            ),
            BottoMStackButton(),
          ]),
        ),
      ),
    );
  }
}
