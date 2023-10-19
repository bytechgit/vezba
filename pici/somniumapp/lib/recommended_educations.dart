import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:somniumapp/education_card.dart';

import 'package:somniumapp/models/education_model.dart';

class RecommendedEducations extends StatelessWidget {
  const RecommendedEducations({super.key});

  @override
  Widget build(BuildContext context) {
    List<EducationModel> educations = [
      EducationModel(
          author: "Sasa Stojiljkovic",
          nameEducation: "Kako smanjiti stres praktikovanjem vezbe disanja?",
          picture: "assets/berza.png"),
      EducationModel(
          author: "Sasa Stojiljkovic",
          nameEducation: "Kako smanjiti stres praktikovanjem vezbe disanja?",
          picture: "assets/berza.png"),
      EducationModel(
          author: "Sasa Stojiljkovic",
          nameEducation: "Kako smanjiti stres praktikovanjem vezbe disanja?",
          picture: "assets/berza.png"),
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
            right: 5,
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/book.png",
                fit: BoxFit.cover,
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "Preporučena edukacija",
                  style: GoogleFonts.redHatDisplay(
                      color: const Color.fromRGBO(239, 239, 239, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const Spacer(),
              Text(
                "Pogledaj sve",
                textAlign: TextAlign.center,
                style: GoogleFonts.redHatDisplay(
                    color: const Color.fromRGBO(236, 167, 44, 1),
                    fontSize: 10,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...educations.map((e) {
                return EducationCard(education: e);
              }),
            ],
          ),
        ),
      ],
    );
  }
}
