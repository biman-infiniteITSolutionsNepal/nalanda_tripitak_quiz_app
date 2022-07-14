import 'package:flutter/material.dart';
import 'package:nalanda_tripitak_quiz_app/utils/routes.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/footer_container_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/heading_container_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/rounded_button_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/rounded_text_field_widget.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

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
                  HeadingContainerWidget(containerText: "Change Password", screenHeight: height, dividerHeight: 4,),
                  SizedBox(height: height / 18,),
                  const SizedBox(width: 260, child: Text("Enter a new strong password", style: TextStyle(fontSize: 20, color: Color(0xff042803)),)),
                  SizedBox(height: height / 12,),
                  TextFieldWidget("Enter your new password"),
                  SizedBox(height: height / 28),
                  TextFieldWidget("Re-enter your new password"),
                  SizedBox(height: height / 18,),
                  RoundedButtonWidget(buttonText: "Reset", width: 350, onpressed: () => Navigator.pushNamed(context, MyRoutes.landingRoute)),
                  SizedBox(height: height / 8,),
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