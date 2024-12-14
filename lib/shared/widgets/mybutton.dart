import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  const MyButton({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34),
          color: color,
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
