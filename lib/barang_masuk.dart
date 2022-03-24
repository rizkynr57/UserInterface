import 'dart:ui';
import 'home_screen.dart';
import 'package:flutter/material.dart';
​
class DataBarangMasuk extends StatelessWidget {
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
                child: Text("Data Barang Masuk"),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color> [
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
                      DataColumn(label: Text("Nama Supplier")),
                      DataColumn(label: Text("Nama Barang")),
                      DataColumn(label: Text("Jumlah Masuk")),
                      DataColumn(label: Text("Tanggal Masuk")),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Renata")),
                          DataCell(Text("Iphone")),
                          DataCell(Text("98")),
                          DataCell(Text("14 Januari")),
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
