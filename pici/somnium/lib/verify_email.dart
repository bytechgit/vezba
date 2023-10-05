import 'package:flutter/material.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(31, 26, 87, 1),
            Color.fromRGBO(4, 7, 37, 1),
          ]),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 149,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(107, 80, 231, 1),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Please verify your E-mail",
                    style: TextStyle(
                        color: Color.fromRGBO(235, 235, 235, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "You’re almost there! We sent an E-mail to you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(235, 235, 235, 1), fontSize: 12),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Just click on the link in that E-mail to complite your signup. If you don’t see it, you may need to check your spam folder. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(235, 235, 235, 1), fontSize: 12),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Still can’t find the E-mail? No problem.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(235, 235, 235, 1), fontSize: 12),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(94, 65, 225, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Resend Verification E-mail",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(235, 235, 235, 1),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
