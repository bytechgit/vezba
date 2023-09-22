import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedContainerIndex = 0;
  List<String> categoryName = ["Women", "Man", "Old"];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: categoryName.asMap().entries.map((entry) {
        //asmap pretvara listu u mapu gde su kljucevi indeksi a vrednosti elementi
        //entries vraca objekat koji generise parove kljuc vrednosti za svaki element
        final index = entry.key; //pristup indeksu trenutnog elementa
        final categoryName = entry.value; // pristup samog elementa

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
                  categoryName,
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
