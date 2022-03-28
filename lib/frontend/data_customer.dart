import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../controllers/customerController.dart';

class DataCustomer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final CustomerController customerController = Get.put(CustomerController());
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
                child: Text("Data Pelanggan"),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.blue,
                    Colors.white,
                    Colors.blue,
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
                            DataCell(Text("CTR001")),
                            DataCell(Text("Rico")),
                            DataCell(Text("Bandung")),
                            DataCell(Text("rico@gmail.com")),
                            DataCell(Text("12312312441")),
                            // DataCell(Text(customerController.customerList[index].kode.toString())),
                            // DataCell(Text(customerController.customerList[index].nama.toString())),
                            // DataCell(Text(customerController.customerList[index].alamat.toString())),
                            // DataCell(Text(customerController.customerList[index].email.toString())),
                            // DataCell(Text(customerController.customerList[index].telepon.toString())),
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
