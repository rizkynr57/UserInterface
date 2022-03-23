import 'dart:ui';
import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BarangKeluar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            Container(
              alignment: Alignment.center,
              width: 400,
              height: 200,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Builder(
                        builder: (context) => ElevatedButton(
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.yellowAccent,
                              size: 30,
                            ),
                            onPressed: () async {
                              var result = await Navigator.push<String>(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            }),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        "Data Supplier",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.black, Colors.blue]),
              ),
            ),
            DataTable(
              columns: [
                DataColumn(label: Text("No")),
                DataColumn(label: Text("Customer")),
                DataColumn(label: Text("Nama")),
                DataColumn(label: Text("Jumlah Pengiriman")),
                DataColumn(label: Text("Harga")),
                DataColumn(label: Text("Tujuan")),
                DataColumn(label: Text("Tanggal Keluar")),
                // DataColumn(label: Text("Perusahaan")),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text("1")),
                    DataCell(Text("SP08292")),
                    DataCell(Text("Susu")),
                    DataCell(Text("10")),
                    DataCell(Text("20.000")),
                    DataCell(Text("Samarinda")),
                    DataCell(Text("20 Januari")),
                    // DataCell(Text("PT Belum Pasti")),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
