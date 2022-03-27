import 'package:ujikom/main_screen.dart';
import 'package:ujikom/frontend/data_supplier';
import 'package:ujikom/frontend/data_customer';
import 'package:ujikom/frontend/barang_masuk.dart';
import 'package:ujikom/frontend/barang_keluar.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'controller_bindings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBindings(),
      home: SplashScreenView(
        navigateRoute: MainScreen(),
        duration: 4000,
        imageSize: 150,
        imageSrc: "assets/img/logoprofil.png",
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
