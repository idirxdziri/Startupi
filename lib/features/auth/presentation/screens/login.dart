import 'package:devfest_batna_2024/shared/widgets/logo.dart';
import 'package:devfest_batna_2024/shared/widgets/text_display.dart';
import 'package:devfest_batna_2024/shared/widgets/mybutton.dart';
import 'package:devfest_batna_2024/core/constant/colors.dart';
import 'package:devfest_batna_2024/features/auth/presentation/widgets/dont.dart';
import 'package:devfest_batna_2024/features/auth/presentation/widgets/google_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: [
          MyLogo(
            width: size.width * 0.09,
          ),
          const Spacer(),
          const DisplayText(firstText: 'let\'s', secondText: 'get started!'),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text("Forgot your password?"),
          ),
          const MyButton(text: 'Login', color: MyColors.mauve),
          const Divider(),
          const DontAlready(
              text: 'Don\'t have an account?', callToAction: 'Sign up'),
          const Text("Or"),
          const  GoogleButton(),
        ],
      ),
    );
  }
}
