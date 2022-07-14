import 'package:flutter/material.dart';
import 'package:game_levels_scrolling_map/game_levels_scrolling_map.dart';
import 'package:game_levels_scrolling_map/model/point_model.dart';

class QuizLevelScreen extends StatefulWidget {
  const QuizLevelScreen({Key? key}) : super(key: key);

  @override
  State<QuizLevelScreen> createState() => _QuizLevelScreenState();
}

class _QuizLevelScreenState extends State<QuizLevelScreen> {

  @override
  void initState() {
    // TODO: implement initState
    fillTestData();
  }

  List<PointModel> points = [];

  void fillTestData() {
    for (int i = 0; i < 100; i++) {
      points.add(PointModel(100, testWidget(i)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: GameLevelsScrollingMap.scrollable(
            imageUrl:"assets/images/drawable/map_vertical.png",
            direction: Axis.vertical,
            reverseScrolling: true,
            pointsPositionDeltaX: 25,
            pointsPositionDeltaY: 30,
            svgUrl: 'assets/images/svg/map_vertical.svg',
            points: points,)
      ), // This trailing comma makes auto-formatting nicer for build methods.
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
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text("Point $order"),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}