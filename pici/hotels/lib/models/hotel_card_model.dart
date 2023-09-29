import 'package:flutter/material.dart';

class HotelCardModel {
  String picture;
  String numberRating;
  String numberSince;
  String nameHotel;
  String nameCity;
  String price;
  IconData location;
  IconData favorite;
  String partOfTheDay;

  HotelCardModel(
      {required this.nameCity,
      required this.favorite,
      required this.partOfTheDay,
      required this.location,
      required this.numberRating,
      required this.numberSince,
      required this.nameHotel,
      required this.picture,
      required this.price});
}
