// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:nalanda_tripitak_quiz_app/utils/routes.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/footer_container_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/heading_container_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/rounded_button_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/rounded_text_field_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/social_media_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/text_button_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    // Full screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset("assets/images/backgrounds/transparentBG.png").image,
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeadingContainerWidget(containerText: "Nalanda Tripitak Quiz App", screenHeight: height, dividerHeight: 4,),
                SizedBox(height: height / 18,),
                TextFieldWidget("Enter your email"),
                SizedBox(height: height / 28,),
                TextFieldWidget("Enter your password"),
                SizedBox(height: height / 18,),
                RoundedButtonWidget(buttonText: "Login", width: 350, onpressed: () => Navigator.pushNamed(context, MyRoutes.homeRoute)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButtonWidget(buttonText: "Forgot password?", textColor: Color(0xff042803), onPressed: () => Navigator.pushNamed(context, MyRoutes.resetPasswordRoute)),
                    const SizedBox(width: 70),
                    TextButtonWidget(buttonText: "Continue as guest", textColor: Color.fromARGB(255, 41, 159, 32), onPressed: () => Navigator.pushNamed(context, MyRoutes.continueAsGuestRoute)),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                  child: Divider(thickness: 2, color: Color(0xff042803),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaWidget(onPressed: () {}, mediaName: "Facebook", buttonColor: Color(0xff3b5998), width: 150),
                    const SizedBox(width: 50, child: Center(child: Text("OR"))),
                    SocialMediaWidget(onPressed: () {}, mediaName: "Google", buttonColor: Color(0xffDB4437), width: 150)
                ],),
                SizedBox(height: height / 17,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FooterContainerWidget(containerText: 'Sign Up', screenHeight: height, screenWidth: width, onPressed: () => Navigator.pushNamed(context, MyRoutes.signUpRoute),)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}