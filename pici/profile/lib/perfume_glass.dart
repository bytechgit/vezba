import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:profile/models_perfume_glass.dart';
import 'package:profile/perfurm.dart';

class PerfumeGlass extends StatefulWidget {
  const PerfumeGlass({super.key});

  @override
  State<PerfumeGlass> createState() => _PerfumeGlassState();
}

class _PerfumeGlassState extends State<PerfumeGlass> {
  List<ModelsPerfurm> perfurme = [
    ModelsPerfurm(
        picture: "avaluxe.jpg",
        tekst: "AvaLuxe glass",
        tekst1: "Perfurme",
        tekst2: "\$86"),
    ModelsPerfurm(
        picture: "dereklum.jpg",
        tekst: "DerekLum",
        tekst1: "Perfurme",
        tekst2: "\$86"),
    ModelsPerfurm(
        picture: "glasavon.jpg",
        tekst: "GlasAvon",
        tekst1: "Perfurme",
        tekst2: "\$86"),
    ModelsPerfurm(
        picture: "avaluxe.jpg",
        tekst: "AvaLuxe glass",
        tekst1: "Perfurme",
        tekst2: "\$86"),
    ModelsPerfurm(
        picture: "dereklum.jpg",
        tekst: "DerekLum",
        tekst1: "Perfurme",
        tekst2: "\$86"),
    ModelsPerfurm(
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
          return Perfurm(e: e);
        })
      ],
    );
  }
}
