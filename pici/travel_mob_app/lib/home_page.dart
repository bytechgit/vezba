import 'package:flutter/material.dart';
import 'package:travel_mob_app/category.dart';
import 'package:travel_mob_app/header_widget.dart';
import 'package:travel_mob_app/hotels_card.dart';
import 'package:travel_mob_app/parks_card.dart';

import 'package:travel_mob_app/places_card.dart';
import 'package:travel_mob_app/textfield_widget.dart';

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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(),
                SizedBox(
                  height: 12,
                ),
                TextFieldWidget(),
                SizedBox(
                  height: 12,
                ),
                Category(),
                SizedBox(
                  height: 12,
                ),
                ParksCard(),
                SizedBox(
                  height: 12,
                ),
                PlacesCard(),
                SizedBox(
                  height: 12,
                ),
                HotelsCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
