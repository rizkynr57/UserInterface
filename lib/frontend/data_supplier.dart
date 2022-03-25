import 'dart:ui';
import 'home_screen.dart';
import 'package:flutter/material.dart';

class DataSupplier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              width: 400,
              height: 200,
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 139.7,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.lightGreenAccent,
                                  Colors.lightBlueAccent
                                ]),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(50, 35),
                                topRight: Radius.elliptical(50, 35))),
                        child: Text(
                          "Data Supplier",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.red,
                    Colors.white,
                    Colors.red,
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text("No")),
                    DataColumn(label: Text("Kode")),
                    DataColumn(label: Text("Nama")),
                    DataColumn(label: Text("Alamat")),
                    DataColumn(label: Text("No. Telepon")),
                    DataColumn(label: Text("Nama Perusahaan")),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text("1")),
                        DataCell(Text("SP9383")),
                        DataCell(Text("RzQ")),
                        DataCell(Text("Bandung")),
                        DataCell(Text("9383031")),
                        DataCell(Text("PT Mitsubishi")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
