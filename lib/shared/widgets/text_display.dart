import 'package:devfest_batna_2024/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayText extends StatelessWidget {
  final String firstText;
  final String secondText;
  const DisplayText(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    TextStyle? style = GoogleFonts.urbanist(
      fontSize: width * 0.13,
      color: MyColors.mauve,
    );
    return Flex(
      direction: Axis.vertical,
      children: [
        Text(firstText, style: style),
        Text(secondText, style: style),
      ],
    );
  }
}
