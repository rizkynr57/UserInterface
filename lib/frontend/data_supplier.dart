import 'dart:ui';
import 'package:flutter/material.dart';
import '../controllers/supplierController.dart';

class DataSupplier extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // final SupplierController supplierController = Get.put(SupplierController());
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              width: 400,
              height: 200,
              child: Container(
                alignment: Alignment.center,
                child: Text("Data Supplier"),
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
           // ListView.builder(
           // itemCount: supplierController.supplierList.length;
           // itemBuilder: (content, index) {
           // return
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
                    DataColumn(label: Text("Perusahaan")),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text("1")),
                        DataCell(Text("SPR001")),
                        DataCell(Text("Rico")),
                        DataCell(Text("Bandung")),
                        DataCell(Text("093213211")),
                        DataCell(Text("PT")),
                        // DataCell(Text(supplierController.supplierList[index].kode.toString())),
                        // DataCell(Text(supplierController.supplierList[index].namaSupplier.toString())),
                        // DataCell(Text(supplierController.supplierList[index].alamat.toString())),
                        // DataCell(Text(supplierController.supplierList[index].noTelp.toString())),
                        // DataCell(Text(supplierController.supplierList[index].namaPerusahaan.toString())),
                      ],
                    ),
                  ],
                ),
          //     }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
