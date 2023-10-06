import 'package:flutter/material.dart';

class ProfileModel {
  final String picture;
  final String name;
  final String city;
  final String description;
  final IconData verificated;

  ProfileModel(
      {required this.city,
      required this.verificated,
      required this.description,
      required this.name,
      required this.picture});
}
