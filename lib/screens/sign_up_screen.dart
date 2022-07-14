// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:nalanda_tripitak_quiz_app/utils/routes.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/footer_container_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/heading_container_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/rounded_button_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/rounded_text_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Container(
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset("assets/images/backgrounds/transparentBG.png").image,
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.modulate,)
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  HeadingContainerWidget(containerText: "Create Account", screenHeight: height, dividerHeight: 4,),
                  SizedBox(height: height / 18,),
                  TextFieldWidget("Enter your name"),
                  SizedBox(height: height / 28),
                  TextFieldWidget("Enter your email"),
                  SizedBox(height: height / 28),
                  TextFieldWidget("Enter your password"),
                  SizedBox(height: height / 18,),
                  RoundedButtonWidget(buttonText: "Sign Up", width: 350, onpressed: () => Navigator.pushNamed(context, MyRoutes.landingRoute)),
                  SizedBox(height: height / 8                                                                                                                                                                                                               ,),
                  FooterContainerWidget(containerText: "Login", screenHeight: height, screenWidth: width, onPressed: () => Navigator.pushNamed(context, MyRoutes.landingRoute),)
                ],
              ),
            ],
          )
        ),
      )
    );
  }
}