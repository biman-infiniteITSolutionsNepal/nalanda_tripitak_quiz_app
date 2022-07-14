import 'package:flutter/material.dart';
import 'package:nalanda_tripitak_quiz_app/utils/routes.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/drawer_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/heading_container_widget.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/rounded_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        // title: Text("Biman Lakhey"),
        backgroundColor: Color(0xff354A33),
        elevation: 0,
        actions: <Widget>[
          TextButton(
            onPressed: () {}, 
            child: Icon(Icons.notifications_none_rounded, color: Colors.white)
          )
        ],
      ),
      drawer: DrawerWidget(),
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
              HeadingContainerWidget(containerText: "Home", screenHeight: height, dividerHeight: 7,),
              SizedBox(height: height / 18,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Divider(thickness: 2, color: Color(0xff042803),),
              ),
              SizedBox(height: height / 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text("0", style: TextStyle(color: Color(0xff042803), fontSize: 18),),
                      Text("High Score", style: TextStyle(color: Color(0xff042803), fontSize: 18),)
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: const [
                      Text("0", style: TextStyle(color: Color(0xff042803), fontSize: 18),),
                      Text("Current Level", style: TextStyle(color: Color(0xff042803), fontSize: 18),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: height / 20,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Divider(thickness: 2, color: Color(0xff042803),),
              ),
              SizedBox(height: height / 8,),
              RoundedButtonWidget(buttonText: "Play Quiz", width: width, onpressed: () {Navigator.pushNamed(context, MyRoutes.quizSettingsRoute);}),
              SizedBox(height: height / 10,),
              RoundedButtonWidget(buttonText: "View Leaderboard", width: width, onpressed: () {}),
            ]
          )
        )
      )
    );
  }
}