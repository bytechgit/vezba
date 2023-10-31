import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:somniumapp/models/education_model.dart';

class CourseCard extends StatelessWidget {
  final EducationModel course;
  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: sizeWidth,
          height: sizeHeight * 0.27,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(course.picture), fit: BoxFit.fill),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 35, left: 15),
          child: Text(
            course.nameEducation,
            style: GoogleFonts.redHatDisplay(
                color: const Color.fromRGBO(239, 239, 239, 1),
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15,
          ),
          child: Text(
            'Author: ${course.author}',
            style: GoogleFonts.redHatDisplay(
                color: const Color.fromRGBO(239, 239, 239, 0.7),
                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
