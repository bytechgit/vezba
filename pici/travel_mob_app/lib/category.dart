import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> nameCategory = [
    "All",
    "Latest",
    "Popular",
  ];
  int selectedcontainerindex = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...nameCategory.asMap().entries.map(
            // Gde su ključevi indeksi
            (entry) {
              // Kako bi se dobila lista parova ključ-vrednost
              final int index = entry.key;
              final String category = entry.value;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedcontainerindex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedcontainerindex == index
                          ? Colors.blue
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12, top: 10, bottom: 10),
                      child: Center(
                        child: FittedBox(
                          child: Text(
                            category,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: selectedcontainerindex == index
                                  ? Colors.white
                                  : Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
