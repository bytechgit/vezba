import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 90,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            child: const TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                prefixIconConstraints:
                    BoxConstraints.tightFor(width: 45, height: 20),
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.tune,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
