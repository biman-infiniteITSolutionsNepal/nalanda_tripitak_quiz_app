// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:game_levels_scrolling_map/game_levels_scrolling_map.dart';
import 'package:game_levels_scrolling_map/model/point_model.dart';
import 'package:nalanda_tripitak_quiz_app/screens/quiz_screen.dart';
import 'package:nalanda_tripitak_quiz_app/utils/routes.dart';

class QuizLevelScreen extends StatefulWidget {
  const QuizLevelScreen({Key? key}) : super(key: key);

  @override
  State<QuizLevelScreen> createState() => _QuizLevelScreenState();
}

class _QuizLevelScreenState extends State<QuizLevelScreen> {

  int quizLevel = 1;

  @override
  void initState() {
    // TODO: implement initState
    fillTestData();
  }

  List<PointModel> points = [];

  void fillTestData() {
    for (int i = 0; i <= quizLevel; i++) {
      points.add(PointModel(100, testWidget(i)));
    }
  }

  @override
  Widget build(BuildContext context) {
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
            title: Text("Back to Home", style: TextStyle(color: Colors.white),),
            content: Text("Do you wish to go back to home?"),
            actions: <Widget>
            [
              TextButton
              (
                onPressed: () 
                {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: Text("yes", style: TextStyle(color: Colors.white,))
              ),
            ],
          ),
        );
        return false;
      },
      child: Scaffold(
        body: GameLevelsScrollingMap.scrollable(
          imageUrl:"assets/images/drawable/map_vertical.png",
          direction: Axis.vertical,
          reverseScrolling: true,
          pointsPositionDeltaX: 25,
          pointsPositionDeltaY: 30,
          svgUrl: 'assets/images/svg/map_vertical.svg',
          points: points,), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget testWidget(int order) {
    return InkWell(
      hoverColor: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/drawable/map_vertical_point.png",
            fit: BoxFit.fitWidth,
            width: 40,
          ),
          Text("$order",
              style: const TextStyle(color: Colors.black, fontSize: 12))
        ],
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog
          (
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))
            ),
            backgroundColor: Color(0xff354A33),
            contentTextStyle: TextStyle(color: Colors.white),
            title: Text("Level $order", style: TextStyle(color: Colors.white),),
            content: Text("Do you wish to play Level $order?"),
            actions: <Widget>
            [
              TextButton
              (
                onPressed: () 
                {
                  QuizScreen.order = order;
                  Navigator.pushNamed(context, MyRoutes.quizRoute);
                },
                child: Text("yes", style: TextStyle(color: Colors.white,))
              ),
            ],
          ),
        );
      },
    );
  }
}