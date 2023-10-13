import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SomniumTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final String prefixIcon;
  final String? suffixIcon;

  const SomniumTextField(
      {super.key,
      required this.title,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon});

  @override
  State<SomniumTextField> createState() => _SomniumTextFieldState();
}

class _SomniumTextFieldState extends State<SomniumTextField> {
  final FocusNode _focus = FocusNode();
  bool isSelected = false;
  @override
  void initState() {
    super.initState();
    _focus.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(left: 23.0),
        child: Text(
          widget.title,
          style: GoogleFonts.redHatDisplay(
              color: _focus.hasFocus
                  ? const Color.fromRGBO(31, 26, 87, 1)
                  : const Color.fromRGBO(192, 192, 192, 1),
              fontSize: 15,
              fontWeight: FontWeight.w700),
        ),
      ),
      InkWell(
        onTap: () {
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
          ),
          child: Container(
            height: 57,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.8,
                color: _focus.hasFocus
                    ? const Color.fromRGBO(31, 26, 87, 1)
                    : const Color.fromRGBO(192, 192, 192, 1),
              ),
              gradient: const LinearGradient(colors: [
                Color.fromRGBO(241, 241, 241, 1),
                Color.fromRGBO(255, 255, 255, 1),
              ]),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              onTap: () {},
              focusNode: _focus,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Image.asset(
                    widget.prefixIcon,
                    width: 5,
                    height: 5,
                    color: _focus.hasFocus
                        ? const Color.fromRGBO(31, 26, 87, 1)
                        : const Color.fromRGBO(192, 192, 192, 1),
                  ),
                  labelText: _focus.hasFocus ? null : widget.hintText,
                  suffixIcon: widget.suffixIcon != null
                      ? Image.asset(
                          widget.suffixIcon!,
                          color: _focus.hasFocus
                              ? const Color.fromRGBO(31, 26, 87, 1)
                              : const Color.fromRGBO(192, 192, 192, 1),
                        )
                      : null,
                  labelStyle: GoogleFonts.redHatDisplay(
                    color: _focus.hasFocus
                        ? const Color.fromRGBO(35, 35, 35, 1)
                        : const Color.fromRGBO(192, 192, 192, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ),
        ),
      ),
    ]);
  }
}
