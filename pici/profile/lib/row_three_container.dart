import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:profile/models_row_three_container.dart';

class RowThreeContainer extends StatefulWidget {
  const RowThreeContainer({super.key});

  @override
  State<RowThreeContainer> createState() => _RowThreeContainerState();
}

class _RowThreeContainerState extends State<RowThreeContainer> {
  List<ModelsThreeContainer> threecontainers = [
    ModelsThreeContainer(tekst: "Woman"),
    ModelsThreeContainer(tekst: "Man"),
    ModelsThreeContainer(tekst: "Old"),
  ];
  int selectedContainerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: threecontainers.asMap().entries.map((entry) {
        //asmap pretvara listu u mapu gde su kljucevi indeksi a vrednosti elementi
        //entries vraca objekat koji generise parove kljuc vrednosti za svaki element
        final index = entry.key; //pristup indeksu trenutnog elementa
        final container = entry.value; // pristup samog elementa

        return Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedContainerIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: index == selectedContainerIndex
                    ? const Color.fromARGB(255, 252, 124, 115)
                    : const Color.fromARGB(255, 228, 225, 225),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  container.tekst,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: index == selectedContainerIndex
                        ? Colors.white
                        : Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
