import 'package:devfest_batna_2024/core/constant/colors.dart';
import 'package:devfest_batna_2024/features/auth/presentation/screens/login.dart';
import 'package:devfest_batna_2024/shared/widgets/logo.dart';
import 'package:flutter/material.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Center(
          child: MyLogo(
        width: width * 0.13,
      )),
    );
  }
}
