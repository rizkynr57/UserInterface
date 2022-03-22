import 'package:flutter/material.dart';
import 'package:pkl/menu1_screen.dart';
import 'package:pkl/menu2_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              margin: EdgeInsets.all(16),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MenuScreen2(),
                  ),
                );
              },
              child: Text("Pindah ke Menu 2"),
            ),
          ],
        ),
      ),
    );
  }
}
