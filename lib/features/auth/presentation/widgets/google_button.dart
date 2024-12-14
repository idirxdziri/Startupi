import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
              ),
              child: Center(
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Image.asset("assets/images/Group.png"),
                    const Text('Login with google')],
                ),
              ),
            ),
          );
  }
}