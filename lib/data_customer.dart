import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class DataCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            Container(
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
                        "Data Customer",
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
                    colors: [Colors.redAccent, Colors.black, Colors.redAccent]),
              ),
            ),
            DataTable(
              columns: [
                DataColumn(label: Text("No")),
                DataColumn(label: Text("Kode")),
                DataColumn(label: Text("Nama")),
                DataColumn(label: Text("Alamat")),
                DataColumn(label: Text("Email")),
                // DataColumn(label: Text("Perusahaan")),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text("1")),
                    DataCell(Text("SP08292")),
                    DataCell(Text("Rzq")),
                    DataCell(Text("Bandung")),
                    DataCell(Text("098244242")),
                    // DataCell(Text("PT Belum Pasti")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("2")),
                    DataCell(Text("SP08292")),
                    DataCell(Text("Rzq")),
                    DataCell(Text("Bandung")),
                    DataCell(Text("098244242")),
                    // DataCell(Text("PT Belum Pasti")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("3")),
                    DataCell(Text("SP08292")),
                    DataCell(Text("Rzq")),
                    DataCell(Text("Bandung")),
                    DataCell(Text("09824424")),
                    // DataCell(Text("PT Belum Pasti")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("4")),
                    DataCell(Text("SP08292")),
                    DataCell(Text("Rzq")),
                    DataCell(Text("Bandung")),
                    DataCell(Text("098244242")),
                    // DataCell(Text("PT Belum Pasti")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("5")),
                    DataCell(Text("SP08292")),
                    DataCell(Text("Rzq")),
                    DataCell(Text("Bandung")),
                    DataCell(Text("098244242")),
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
