import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLogo extends StatelessWidget {
  final double width;
  const MyLogo({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/Vector.png"),
        Expanded(
          child: Text(
            "Startupi",
            style: GoogleFonts.urbanist(
              fontSize: width * 0.12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
