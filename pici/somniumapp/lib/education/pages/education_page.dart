import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:somniumapp/education/widgets/course_card.dart';
import 'package:somniumapp/models/education_model.dart';

import 'package:somniumapp/recommended_songs.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<EducationModel> courses = [
      EducationModel(
          author: "Nemanja Milović",
          nameEducation:
              "Navike koje vam uništavaju život: ovo ne treba da radite ujutru i uveče ",
          picture: "assets/education.png"),
    ];

    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: sizeWidth,
        height: sizeHeight,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(4, 7, 37, 1),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15,
                    top: 30,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/book_education.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Preporučeno",
                        style: GoogleFonts.redHatDisplay(
                            color: const Color.fromRGBO(239, 239, 239, 1),
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ...courses.map((e) {
                  return CourseCard(course: e);
                }),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10, top: 5),
                  child: RecommendedSongs(
                    viewAllText: "Pogledaj Sve",
                    category: "Moji kursevi",
                    categoryIcon: "assets/book_education.png",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/book_education.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Kursevi",
                        style: GoogleFonts.redHatDisplay(
                            color: const Color.fromRGBO(239, 239, 239, 1),
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ...courses.map((e) {
                  return CourseCard(course: e);
                }),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
