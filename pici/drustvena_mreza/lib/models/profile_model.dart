import 'package:flutter/material.dart';

class ProfileModel {
  final String picture;
  final String name;
  final String city;
  final String description;
  final IconData verificatedIcon;

  ProfileModel(
      {required this.city,
      required this.verificatedIcon,
      required this.description,
      required this.name,
      required this.picture});
}
