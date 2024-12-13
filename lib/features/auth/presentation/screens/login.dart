import 'package:devfest_batna_2024/shared/widgets/logo.dart';
import 'package:devfest_batna_2024/shared/widgets/text_display.dart';
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
            child: Text("Forgot your password?"),
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
              ),
              child: Center(
                child: Text('Login'),
              ),
            ),
          ),
          Divider(),
          Flex(
            direction: Axis.horizontal,
            children: [
              Text('Don\'t have an account?'),
              TextButton(
                onPressed: () {},
                child: Text("Sign up"),
              ),
            ],
          ),
          Text("Or"),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
              ),
              child: Center(
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Image.asset("assets/images/Group.png"),
                    Text('Login with google')],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
