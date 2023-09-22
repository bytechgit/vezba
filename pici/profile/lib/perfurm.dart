import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:profile/perfurm_model.dart';
import 'package:profile/perfurms.dart';

class Perfurm extends StatefulWidget {
  const Perfurm({super.key});

  @override
  State<Perfurm> createState() => _PerfurmState();
}

class _PerfurmState extends State<Perfurm> {
  List<PerfurmModel> perfurme = [
    PerfurmModel(
        picture: "avaluxe.jpg",
        tekst: "AvaLuxe glass",
        tekst1: "Perfurme",
        tekst2: "\$86"),
    PerfurmModel(
        picture: "dereklum.jpg",
        tekst: "DerekLum",
        tekst1: "Perfurme",
        tekst2: "\$86"),
    PerfurmModel(
        picture: "glasavon.jpg",
        tekst: "GlasAvon",
        tekst1: "Perfurme",
        tekst2: "\$86"),
    PerfurmModel(
        picture: "avaluxe.jpg",
        tekst: "AvaLuxe glass",
        tekst1: "Perfurme",
        tekst2: "\$86"),
    PerfurmModel(
        picture: "dereklum.jpg",
        tekst: "DerekLum",
        tekst1: "Perfurme",
        tekst2: "\$86"),
    PerfurmModel(
        picture: "glasavon.jpg",
        tekst: "GlasAvon",
        tekst1: "Perfurme",
        tekst2: "\$86"),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 10,
      childAspectRatio: 3 / 4,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      children: [
        ...perfurme.map((e) {
          return Perfurms(e: e);
        })
      ],
    );
  }
}
