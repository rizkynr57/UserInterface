import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ujikom/frontend/data_supplier.dart';
import 'package:ujikom/frontend/data_customer.dart';
import 'package:ujikom/frontend/barang_masuk.dart';
import 'package:ujikom/frontend/barang_keluar.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Container(
          child: ListView(
            children: [
              Container(
                width: 400,
                height: 180,
                child: Column(
                  children: [
                    ClipRRect(
                      child: BackdropFilter(
                        filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: Container(
                          height: 120,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          child: Text(
                            "Pengadaan Barang",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/img/tema.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 27)),
              Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(DataSupplier());
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Container(
                          width: 300,
                          height: 50,
                          color: Colors.green,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                size: 50,
                                color: Colors.lightGreenAccent,
                              ),
                              Padding(padding: EdgeInsets.only(left: 15)),
                              Text(
                                "Data Leveransir",
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
                    ),
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap:() {
                        Get.to(DataCustomer());
                      },
                      child: Container(
                      padding: EdgeInsets.all(15),
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Container(
                        width: 300,
                        height: 50,
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.people_alt_rounded,
                              size: 50,
                              color: Colors.lightBlueAccent,
                            ),
                            Padding(padding: EdgeInsets.only(left: 15)),
                            Text(
                              "Data Pelanggan",
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
                    ),
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Get.to(BarangMasuk());
                      },
                      child: Container(
                      padding: EdgeInsets.all(15),
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Container(
                        width: 300,
                        height: 50,
                        color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_downward_rounded,
                              size: 50,
                              color: Colors.redAccent,
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
                    ),
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Get.to(BarangKeluar());
                      },
                      child: Container(
                      padding: EdgeInsets.all(15),
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Container(
                        width: 300,
                        height: 50,
                        color: Colors.yellow,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_upward_outlined,
                              size: 50,
                              color: Colors.yellowAccent,
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
