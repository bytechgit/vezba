import 'package:course/models/user_model.dart';

class CourseModel {
  final String aboutCourse;
  final String nameCourse;
  final double reviews;
  final double rating;
  final UserModel user;
  final int numberLessons;
  final String picture;
  final double price;
  final String certificate;

  CourseModel({
    required this.certificate,
    required this.user,
    required this.price,
    required this.aboutCourse,
    required this.nameCourse,
    required this.numberLessons,
    required this.picture,
    required this.rating,
    required this.reviews,
  });
}
