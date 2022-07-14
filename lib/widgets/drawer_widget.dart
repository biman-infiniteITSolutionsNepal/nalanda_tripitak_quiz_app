// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:nalanda_tripitak_quiz_app/utils/routes.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        children: [
          SizedBox
            (
              height: 150,
              child: DrawerHeader
              ( 
                decoration: const BoxDecoration(color: Color(0xff042803)),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: 
                  [
                    Container
                      (
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration
                        (
                          boxShadow: 
                          // ignore: prefer_const_literals_to_create_immutables
                          [
                            BoxShadow(color: Colors.white, spreadRadius: 2, blurRadius: 4)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(50.0))
                        ),
                        width: 70,
                        height: 70,
                        child: SizedBox(child: CircularProgressIndicator(color: Color(0xff042803),))
                      ),
                    Text
                    (
                      "Biman Lakhey", 
                      style: TextStyle
                      (
                        fontSize: 20, 
                        color: Colors.white
                      ),
                    ),
                  ],
                )
              ),
            ),
            const Padding
            (
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text
              (
                "User",
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ),
            ListTile
            (
              onTap: () => {},
              horizontalTitleGap: 1,
              dense: true,
              leading: Icon(Icons.person_outline_outlined),
              title: Text("Profile", style: TextStyle(fontSize: 16))
            ),
            ListTile
            (
              onTap: () => {},
              horizontalTitleGap: 1,
              dense: true,
              leading: Icon(Icons.settings_applications_outlined),
              title: Text("Settings", style: TextStyle(fontSize: 16))
            ),
            
            const Padding
            (
              padding: EdgeInsets.symmetric(horizontal: 20),
              child:  Divider(color: Colors.black54, thickness: 1)
            ),
            ListTile
            (
              onTap: () async {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog
                  (
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0))
                    ),
                    backgroundColor: Color(0xff354A33),
                    contentTextStyle: TextStyle(color: Colors.white),
                    title: Text("Logout", style: TextStyle(color: Colors.white),),
                    content: Text("Do you wish to logout?"),
                    actions: <Widget>
                    [
                      TextButton
                      (
                        onPressed: () 
                        {
                          Navigator.pushNamed(context, MyRoutes.landingRoute);
                        },
                        child: Text("yes", style: TextStyle(color: Colors.white,))
                      ),
                    ],
                  ),
                );
              },
              horizontalTitleGap: 1,
              dense: true,
              leading: Icon(Icons.logout_outlined),
              title: Text("Logout", style: TextStyle(fontSize: 16))
            ),
        ],
      ),
    );
  }
}