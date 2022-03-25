import 'dart:ui';
import 'home_screen.dart';
import 'package:flutter/material.dart';

class DataCustomer extends StatelessWidget {
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
                child: Text("Data Customer"),
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
                    DataColumn(label: Text("Email")),
                    DataColumn(label: Text("No. Telepon")),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text("1")),
                        DataCell(Text("SP9383")),
                        DataCell(Text("RzQ")),
                        DataCell(Text("Bandung")),
                        DataCell(Text("rzq@gmail.com")),
                        DataCell(Text("9923131")),
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