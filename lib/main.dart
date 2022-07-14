import 'package:flutter/material.dart';
import 'package:nalanda_tripitak_quiz_app/screens/change_password_screen.dart';
import 'package:nalanda_tripitak_quiz_app/screens/continue_as_guest_screen.dart';
import 'package:nalanda_tripitak_quiz_app/screens/home_screen.dart';
import 'package:nalanda_tripitak_quiz_app/screens/landing_screen.dart';
import 'package:nalanda_tripitak_quiz_app/screens/otp_verification_screen.dart';
import 'package:nalanda_tripitak_quiz_app/screens/quiz_settings_screen.dart';
import 'package:nalanda_tripitak_quiz_app/screens/reset_password_screen.dart';
import 'package:nalanda_tripitak_quiz_app/screens/sign_up_screen.dart';
import 'package:nalanda_tripitak_quiz_app/screens/splash_screen.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context) => LoadingScreen(),
        "/landingScreen": (context) => LandingScreen(),
        "/continueAsGuest": (context) => ContinueAsGuestScreen(),
        "/home": (context) => HomeScreen(),
        "/signUp": (context) => SignUpScreen(),
        "/resetPassword":(context) => ResetPasswordScreen(),
        "/otp": (context) => OTPVerificationScreen(),
        "/changePassword": (context) => ChangePasswordScreen(),
        "/quizSettings":(context) => QuizSettingsScreen(),
      },
    );
  }
}