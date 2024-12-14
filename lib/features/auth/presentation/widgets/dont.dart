import 'package:flutter/material.dart';

class DontAlready extends StatelessWidget {
  final String text;
  final String callToAction;
  const DontAlready(
      {super.key, required this.text, required this.callToAction});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
         Text(text),
        TextButton(
          onPressed: () {},
          child:  Text(callToAction),
        ),
      ],
    );
  }
}
