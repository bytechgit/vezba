import 'package:flutter/material.dart';
import 'package:travel_mob_app/models/park_card_model.dart';
import 'package:travel_mob_app/park_card.dart';

class ParksCard extends StatefulWidget {
  const ParksCard({super.key});

  @override
  State<ParksCard> createState() => _ParksCardState();
}

class _ParksCardState extends State<ParksCard> {
  List<ParkCardModel> parks = [
    ParkCardModel(
        namePark: "Banif National Park",
        picture: "assets/picture1.jpg",
        placePark: "Island"),
    ParkCardModel(
        namePark: "Snowfall",
        picture: "assets/picture2.jpg",
        placePark: "Island"),
    ParkCardModel(
        namePark: "Banif National Park",
        picture: "assets/picture3.jpg",
        placePark: "Island"),
    ParkCardModel(
        namePark: "Banif National Park",
        picture: "assets/picture1.jpg",
        placePark: "Island"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...parks.map(
            (e) {
              return ParkCard(
                park: e,
              );
            },
          )
        ],
      ),
    );
  }
}
