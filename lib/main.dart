import 'package:flutter/material.dart';
import 'package:ujikom/main_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'home_screen.dart';

void main() {
  runApp(ProfileScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
        navigateRoute: MainScreen(),
        duration: 4000,
        imageSize: 130,
        imageSrc: "assets/img/logo.jpg",
        backgroundColor: Colors.white,
        text: "Pengadaan Barang",
        textType: TextType.TyperAnimatedText,
        textStyle: TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
