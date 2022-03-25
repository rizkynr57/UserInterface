import 'dart:ui';
import 'home_screen.dart';
import 'package:flutter/material.dart';

class BarangKeluar extends StatelessWidget {
    
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
                child: Text("Data Barang Keluar"),
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
