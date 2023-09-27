import 'package:flutter/material.dart';
import 'package:travel_mob_app/models/place_card_model.dart';
import 'package:travel_mob_app/place_card.dart';

class PlacesCard extends StatefulWidget {
  const PlacesCard({super.key});

  @override
  State<PlacesCard> createState() => _PlacesCardState();
}

class _PlacesCardState extends State<PlacesCard> {
  List<PlaceCardModel> places = [
    PlaceCardModel(
        nameCountry: "Japan",
        namePlace: "Japanese Lake",
        picture: "assets/place1.jpg"),
    PlaceCardModel(
        nameCountry: "Banglandes",
        namePlace: "Sahnk",
        picture: "assets/place2.jpg"),
    PlaceCardModel(
        nameCountry: "Japan",
        namePlace: "Japanese Lake",
        picture: "assets/place3.jpg"),
    PlaceCardModel(
        nameCountry: "Japan",
        namePlace: "Japanese Lake",
        picture: "assets/place1.jpg"),
    PlaceCardModel(
        nameCountry: "Banglandes",
        namePlace: "Sahnk",
        picture: "assets/place2.jpg"),
    PlaceCardModel(
        nameCountry: "Japan",
        namePlace: "Japanese Lake",
        picture: "assets/place3.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Places",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w200,
                      fontSize: 17),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...places.map(
                (e) {
                  return PlaceCard(place: e);
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
