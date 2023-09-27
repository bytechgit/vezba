import 'package:flutter/material.dart';
import 'package:travel_mob_app/models/park_card_model.dart';

class ParksCard extends StatefulWidget {
  const ParksCard({super.key});

  @override
  State<ParksCard> createState() => _ParksCardState();
}

class _ParksCardState extends State<ParksCard> {
  List<ParkCardModel> park = [
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
          ...park.map(
            (park) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  width: 170,
                  height: 190,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage(park.picture), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.bookmark,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          park.namePark,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.place,
                              size: 15,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              park.placePark,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15),
                            ),
                          ],
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
    );
  }
}
