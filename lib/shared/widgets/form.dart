import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
            child: Flex(
              direction: Axis.vertical,
              children: [
                TextFormField(),
                TextFormField(),
              ],
            ),
          );
  }
}