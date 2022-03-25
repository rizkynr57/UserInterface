import 'package:ujikom/main_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'frontend/profile_screen.dart';
import 'frontend/home_screen.dart';
import 'frontend/data_supplier.dart';
import 'frontend/data_Customer.dart';
import 'frontend/barang.dart';
import 'frontend/barang_masuk.dart';
import 'frontend/barang_keluar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
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
