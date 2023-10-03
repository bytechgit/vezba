import 'package:figmamasterclass/models/course.dart';
import 'package:figmamasterclass/models/selection.dart';
import 'package:figmamasterclass/models/user.dart';
import 'package:figmamasterclass/profile_student_widget.dart';
import 'package:flutter/material.dart';

class CourseWidget extends StatefulWidget {
  const CourseWidget({super.key});

  @override
  State<CourseWidget> createState() => _CourseWidgetState();
}

class _CourseWidgetState extends State<CourseWidget> {
  CourseModel course = CourseModel(
    creator: User(name: "Richard Wu", picture: "assets/profile1.jpg"),
    title: "Figma Master Class Design",
    students: [
      User(name: "Richard Wu", picture: "assets/profile1.jpg"),
      User(name: "Richard Wu", picture: "assets/profile1.jpg")
    ],
    description:
        "Hi There, let me explain what this class is, this class is aimed at people new to designing in Figma. We'll start right at the beginning and work our way throuht step by step.",
    selection: SelectionModel(hours: 4, section: 13),
  );

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        width: 350,
        child: Text(
          course.title,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            course.selection.section.toString(),
            style: const TextStyle(color: Colors.grey, fontSize: 16),
          ),
          const SizedBox(
            width: 3,
          ),
          const Text(
            "Sections",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            width: 3,
            height: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            course.selection.hours.toString(),
            style: const TextStyle(color: Colors.grey, fontSize: 16),
          ),
          const SizedBox(
            width: 3,
          ),
          const Text(
            "Hours",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      const SizedBox(child: ProfileStudentWidget()),
      const Text(
        "Description",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
      ),
      const SizedBox(
        height: 6,
      ),
      Text(
        course.description,
        style: const TextStyle(color: Colors.grey, fontSize: 15),
      ),
      const SizedBox(
        height: 5,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.blue, //primer
      ),
    ]);
  }
}
