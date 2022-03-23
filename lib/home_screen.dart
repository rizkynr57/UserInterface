import 'package:flutter/material.dart';
import 'package:ujikom/menu1_screen.dart';
import 'package:ujikom/menu2_screen.dart';
import 'data_customer.dart';
import 'data_supplier.dart';
import 'barang_masuk.dart';
import 'barang_keluar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                width: 400,
                height: 210,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.app_settings_alt_rounded,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/tema.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 27)),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Container(
                        width: 300,
                        height: 50,
                        color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.access_alarm_rounded,
                              size: 30,
                              color: Colors.yellowAccent,
                            ),
                            Padding(padding: EdgeInsets.only(left: 15)),
                            Text(
                              "Data Supplier",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 7)),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Container(
                        width: 300,
                        height: 50,
                        color: Colors.lightBlue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.access_alarm_rounded,
                              size: 30,
                              color: Colors.yellowAccent,
                            ),
                            Padding(padding: EdgeInsets.only(left: 15)),
                            Text(
                              "Data Customer",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 7)),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Container(
                        width: 300,
                        height: 50,
                        color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.access_alarm_rounded,
                              size: 30,
                              color: Colors.yellowAccent,
                            ),
                            Padding(padding: EdgeInsets.only(left: 15)),
                            Text(
                              "Data Barang Masuk",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 7)),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Container(
                        width: 300,
                        height: 50,
                        color: Colors.yellow,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.notifications_rounded,
                              size: 30,
                              color: Colors.blueAccent,
                            ),
                            Padding(padding: EdgeInsets.only(left: 15)),
                            Text(
                              "Data Barang Keluar",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
