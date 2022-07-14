import 'package:flutter/material.dart';
import 'package:nalanda_tripitak_quiz_app/utils/routes.dart';
import 'package:splashscreen/splashscreen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      imageBackground: Image.asset("assets/images/backgrounds/transparentBG.png").image,
      navigateAfterSeconds: MyRoutes.landingRoute,
      image: Image.asset("assets/images/logos/logo.png"),
      photoSize: 200,
      loaderColor: Color(0xff042803),
      loadingText: const Text("By Nalanda Tripitak", style: TextStyle(color: Color(0xff042803), fontSize: 18),),
    );
  }
}