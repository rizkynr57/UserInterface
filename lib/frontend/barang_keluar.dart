import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../controllers/barangKeluarController.dart';

class BarangKeluar extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    final BarangKeluarController barangKeluarController = Get.put(BarangKeluarController());
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
                child: Text("Data Barang Keluar"),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.yellow,
                    Colors.white,
                    Colors.yellow,
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
                    DataColumn(label: Text("Nama Customer")),
                    DataColumn(label: Text("Nama Barang")),
                    DataColumn(label: Text("Jumlah Keluar")),
                    DataColumn(label: Text("Harga")),
                    DataColumn(label: Text("Tujuan")),
                    DataColumn(label: Text("Tanggal Kirim")),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text("1")),
                        DataCell(Text("Sean")),
                        DataCell(Text("Sweeter")),
                        DataCell(Text("5")),
                        DataCell(Text("300.000")),
                        DataCell(Text("Samarinda")),
                        DataCell(Text("20 Februari")),
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
