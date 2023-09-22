import 'package:flutter/material.dart';

import 'perfurm_model.dart';

class Perfurms extends StatelessWidget {
  final PerfurmModel e;
  const Perfurms({
    required this.e,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.05),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 2, right: 5, left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  e.picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              e.tekst,
              maxLines: 2,
              style: const TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              e.tekst1,
              style: const TextStyle(color: Colors.black, fontSize: 17),
            ),
            LayoutBuilder(builder: (context, c) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    e.tekst2,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 2,
                      right: 7,
                      left: 7,
                      bottom: 4,
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 40,
                      ),
                      width: c.maxWidth * 0.2,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 113, 103),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
