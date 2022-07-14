// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:nalanda_tripitak_quiz_app/widgets/heading_container_widget.dart';

class QuizSettingsScreen extends StatefulWidget {
  const QuizSettingsScreen({Key? key}) : super(key: key);

  @override
  State<QuizSettingsScreen> createState() => _QuizSettingsScreenState();
}

class _QuizSettingsScreenState extends State<QuizSettingsScreen> {

  String singleValue = "Without Marks Deduction";

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold
    (
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
              HeadingContainerWidget(containerText: "Quiz Settings", screenHeight: height, dividerHeight: 4,),
              SizedBox(height: height / 18,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,0,0,0),
                    child: Text("Select Quiz mode:", style: TextStyle(fontSize: 16),),
                  ),
                  Column(
                    children: [
                      RadioButton(
                        description: "With Marks Deduction",
                        value: "With Marks Deduction",
                        groupValue: singleValue,
                        onChanged: (value) => setState(
                            () {
                              singleValue = value.toString();
                            },
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0,0,0,0),
                        child: RadioButton(
                          description: "Without Marks Deduction",
                          value: "Without Marks Deduction",
                          groupValue: singleValue,
                          onChanged: (value) => setState(
                            () {
                              singleValue = value.toString();
                            },
                          )
                        ),
                      ),
                    ],
                  )
                ],
              ),
              
            ]
          )
        )
      )
    );
  }
}