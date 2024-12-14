import 'package:devfest_batna_2024/shared/widgets/logo.dart';
import 'package:devfest_batna_2024/shared/widgets/text_display.dart';
import 'package:devfest_batna_2024/shared/widgets/mybutton.dart';
import 'package:devfest_batna_2024/core/constant/colors.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
          const DisplayText(firstText: 'Create Your', secondText: 'Account'),
          const Spacer(),
          const Text("Enter Your Personal Informations"),
          const Spacer(),
          Form(child: Flex(direction: Axis.vertical,children: [
            Flex(direction: Axis.horizontal,children: [
              TextFormField(decoration: const InputDecoration(hintText:"First Name" ),),
              TextFormField(decoration: const InputDecoration(hintText: "Last Name"),)
            ],),
            TextFormField(,decoration: const InputDecoration(hintText: "Email",),),
            Flex(direction: Axis.horizontal,children: [
              TextFormField(decoration: const InputDecoration(hintText:"First Name" ),),
              TextFormField(decoration: const InputDecoration(hintText: "Last Name"),)
            ],),
            TextFormField(),
            const Text("Your password should be at least 8 characters long and include a mix of uppercase letters, lowercase letters, numbers, and special characters."),
           const MyButton(text: 'sign up',color: MyColors.mauve,),
          ],)),
          const Divider(),
          Flex(direction: Axis.horizontal,children: [
            const Text("You already have an account ?"),
            GestureDetector(child: const Text("Log-in"),)
          ],),
         const  Center(child: Text("Or")
         ),
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
                    const Text('Sign Up with google')],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
