import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String buttonText;
  final double width;
  final Function onpressed;

  RoundedButtonWidget({
    required this.buttonText,
    required this.width,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {

    // return DecoratedBox(
    //     decoration: BoxDecoration(
    //           gradient: const LinearGradient(
    //             colors: [
    //               Color(0xff354A33),
    //             Color(0xff042803),
    //             ]),
    //           borderRadius: BorderRadius.circular(5),
    //           boxShadow: const <BoxShadow>[
    //             BoxShadow(
    //                 color: Color.fromRGBO(0, 0, 0, 0.57), 
    //                 blurRadius: 5)
    //           ]
    //       ),
    //     child: ElevatedButton(
    //       style: ButtonStyle(
    //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //             RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(50.0),
    //             ),
    //           ),
    //           minimumSize: MaterialStateProperty.all(Size(width, 50)),
    //           backgroundColor:
    //               MaterialStateProperty.all(Colors.transparent),
    //           shadowColor:
    //               MaterialStateProperty.all(Colors.transparent),
    //               ),
    //       onPressed: onpressed(), 
    //       child: Padding(
    //         padding:const EdgeInsets.only(
    //           top: 18,
    //           bottom: 18,
    //         ),
    //         child:Text(buttonText, style: const TextStyle( fontSize: 18, color: Colors.white),),
    //       )
    //     )  
    // );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [
              Color(0xff354A33),
              Color(0xff042803),
            ],
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              minimumSize: MaterialStateProperty.all(Size(width, 50)),
              backgroundColor:
                  MaterialStateProperty.all(Colors.transparent),
              // elevation: MaterialStateProperty.all(3),
              shadowColor:
                  MaterialStateProperty.all(Colors.transparent),
                  ),
          onPressed: () {
            onpressed();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 23),
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}