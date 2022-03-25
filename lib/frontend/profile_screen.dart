import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.lightBlue,
                Colors.lightGreenAccent,
              ],
            ),
          ),
        child: ListView(
          children:[
            Container(
              width: 400.0,
              height: 300.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://cdn.pixabay.com/photo/2017/12/28/12/31/sketch-3045125_640.jpg"),
                        ),
                      ),
                    ),
                  Container(
                    height: 110,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("Rizky Nurahman",
                             style: TextStyle(
                               fontSize: 22,
                               letterSpacing: 3,
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                             ),
                            ),
                            SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 30,
                              child: Text("Student",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
                                color: Colors.black.withOpacity(0.3),
                              ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 30,
                                child: Text("Developer",
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                            ),
                                           ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Colors.black.withOpacity(0.3),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              height: 450,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                    BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Text("About",
                       style: TextStyle(
                         fontSize: 21.0,
                         fontWeight: FontWeight.bold,
                       ),
                    ),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Container(
                    alignment: Alignment.center,
                    child: Text("Ini adalah deskripsi", textAlign: TextAlign.justify),
                  ),
                ],
              ),
            ),
           ],
          ),
         ),
        ),
       );
      }
     }
