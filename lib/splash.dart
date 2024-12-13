import 'package:flutter/material.dart';

class MySplash extends StatelessWidget {
  const MySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Image.asset("assets/images/Vector.png"),
            const Expanded(
              child: Text(
                "Startupi",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
