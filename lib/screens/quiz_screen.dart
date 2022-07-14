// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nalanda_tripitak_quiz_app/utils/routes.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  static late int order;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  String singleValue = "";
  int questionNo = 0;
  int totalQuestions = 0;
  var questions = ["What is the sixth planet in the solar system?", "How many days are there in a year?", "How many days are there in a week?"];
  // var answers = {};

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    totalQuestions = questions.length-1;
    // var answers = {questions[0]: ["Mercury", "Earth", "Saturn", "Pluto"]};

    return WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog
          (
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))
            ),
            backgroundColor: Color(0xff354A33),
            contentTextStyle: TextStyle(color: Colors.white),
            title: Text("Exit Quiz", style: TextStyle(color: Colors.white),),
            content: Text("Do you wish to exit the quiz?"),
            actions: <Widget>
            [
              TextButton
              (
                onPressed: () 
                {
                  Navigator.pushNamed(context, MyRoutes.quizLevelRoute);
                },
                child: Text("yes", style: TextStyle(color: Colors.white,))
              ),
            ],
          ),
        );
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Level ${QuizScreen.order}"),
          elevation: 0,
          backgroundColor: Color(0xff042803),
        ),
        backgroundColor: Color(0xff042803),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20,75,0,30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$questionNo/$totalQuestions", style: TextStyle(color: Colors.green)),
                SizedBox(height: height / 50,),
                Text(questions[questionNo], style: TextStyle(color: Colors.white, fontSize: 22),),
                SizedBox(height: height / 15),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text("Mercury", style: TextStyle(color: Colors.white, fontSize: 20),),
                  leading: Radio(
                    value: "Mercury",
                    groupValue: singleValue,
                    onChanged: (value) => setState(() {
                      singleValue = value.toString();
                    }),
                    // textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    fillColor: MaterialStateProperty.all(Colors.green),
                    // focusColor: Colors.green,                  
                  ),
                ),
                SizedBox(height: height / 40),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text("Saturn", style: TextStyle(color: Colors.white, fontSize: 20),),
                  leading: Radio(
                    value: "Saturn",
                    groupValue: singleValue,
                    onChanged: (value) => setState(() {
                      singleValue = value.toString();
                    }),
                    // textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    fillColor: MaterialStateProperty.all(Colors.green),
                    
                  ),
                ),
                SizedBox(height: height / 40),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text("Earth", style: TextStyle(color: Colors.white, fontSize: 20),),
                  leading: Radio(
                    value: "Earth",
                    groupValue: singleValue,
                    onChanged: (value) => setState(() {
                      singleValue = value.toString();
                    }),
                    // textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    fillColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
                SizedBox(height: height / 40),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text("Pluto", style: TextStyle(color: Colors.white, fontSize: 20),),
                  leading: Radio(
                    value: "Pluto",
                    groupValue: singleValue,
                    onChanged: (value) => setState(() {
                      singleValue = value.toString();
                    }),
                    // textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    fillColor: MaterialStateProperty.all(Colors.green),
                    
                  ),
                ),
                SizedBox(height: height / 10),
    
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if(questionNo > 0)
                        {
                          setState(() {
                            questionNo--;
                            
                          });
                          // Navigator.pushNamed(context, MyRoutes.quizRoute);
                        }
                      }, 
                      child: Text("Previous", style: TextStyle(fontSize: 20)),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(150, 50)),
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                        // elevation: MaterialStateProperty.all(3),
                        shadowColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                    ),
                    SizedBox(width: width / 9),
                    ElevatedButton(
                      onPressed: () {
                        if(questionNo < totalQuestions)
                        {
                          setState(() {
                            questionNo++;
                            
                          });
                          // Navigator.pushNamed(context, MyRoutes.quizRoute);
                        }
                        
                      }, 
                      child: questionNo == totalQuestions ? Text("Continue", style: TextStyle(fontSize: 20)): Text("Next", style: TextStyle(fontSize: 20)),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(150, 50)),
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                        // elevation: MaterialStateProperty.all(3),
                        shadowColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                    )
                  ],
                )
    
              ],
            ),
          ),
        ),
      ),
    );
  }
}