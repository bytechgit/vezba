import 'package:flutter/material.dart';
import 'package:travel_mob_app/hotel_card.dart';
import 'package:travel_mob_app/models/hotel_card_model.dart';

class HotelsCard extends StatefulWidget {
  const HotelsCard({super.key});

  @override
  State<HotelsCard> createState() => _HotelsCardState();
}

class _HotelsCardState extends State<HotelsCard> {
  List<HotelCardModel> hotel = [
    HotelCardModel(nameHotel: "Miami St Hotel", picture: "assets/miami.jpg"),
    HotelCardModel(
        nameHotel: "Detroit St Hotel", picture: "assets/detroit.jpg"),
    HotelCardModel(
        nameHotel: "Los Angeles St Hotel", picture: "assets/losangeles.jpg"),
    HotelCardModel(nameHotel: "Dallas St Hotel", picture: "assets/dalas.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 10,
      childAspectRatio: 6 / 7,
      children: [
        ...hotel.map((e) {
          return HotelCard(hotel: e);
        })
      ],
    );
  }
}
