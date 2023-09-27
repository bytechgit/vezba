import 'package:flutter/material.dart';
import 'package:travel_mob_app/models/place_card_model.dart';

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
      children: [
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
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
        ),
        const SizedBox(
          height: 7,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...places.map(
                (place) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  place.picture,
                                  width: 89,
                                  height: 70,
                                  fit: BoxFit.cover,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    place.namePlace,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.place,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(place.nameCountry),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
