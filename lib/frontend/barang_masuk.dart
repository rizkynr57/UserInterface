import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../controllers/barangMasukController.dart';

class BarangMasuk extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final BarangMasukController barangMasukController = Get.put(BarangMasukController());
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
