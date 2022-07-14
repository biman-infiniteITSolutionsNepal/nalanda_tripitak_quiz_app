import 'package:flutter/material.dart';
import 'package:nalanda_tripitak_quiz_app/utils/routes.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/footer_container_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/heading_container_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/rounded_button_widget.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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
                  HeadingContainerWidget(containerText: "OTP Verification", screenHeight: height, dividerHeight: 4,),
                  SizedBox(height: height / 18,),
                  const SizedBox(width: 250, child: Text("Enter the code we have sent to your email", style: TextStyle(fontSize: 20, color: Color(0xff042803)),)),
                  SizedBox(height: height / 18,),
                  OTPTextField(
                    length: 4,
                    fieldWidth: 50,
                    width: MediaQuery.of(context).size.width,
                    style: TextStyle(
                      fontSize: 17
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldStyle: FieldStyle.box,
                    otpFieldStyle: OtpFieldStyle(
                      focusBorderColor: Color.fromARGB(255, 41, 159, 32)
                    ),
                  ),
                  SizedBox(height: height / 10,),
                  RoundedButtonWidget(buttonText: "Verify", width: 350, onpressed: () => Navigator.pushNamed(context, MyRoutes.changePasswordRoute)),
                  SizedBox(height: height / 4.73,),
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