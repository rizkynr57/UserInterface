import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/supplierController.dart';

class DataSupplier extends StatelessWidget {
  const DataSupplier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SupplierController supplierController = Get.put(SupplierController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Data Supplier"),
        centerTitle: true,
      ),
      body: Obx(
        () => supplierController.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: supplierController.supplierList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 400,
                        height: 400,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blueAccent, Colors.redAccent]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           Container(
                             width: 400,
                             height: 100,
                             decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black),
                             ),
                             child: Text(
                              "Kode : " +
                                  supplierController.supplierList[index].kode
                                      .toString(),
                              style: TextStyle(backgroundColor: Colors.amber),
                            ),
                           ),
                           Container(
                             width: 400,
                             height: 100,
                             decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black),
                             ),
                             child: Text(
                                "Nama : " +
                                    supplierController
                                        .supplierList[index].namaSupplier
                                        .toString(),
                                style:
                                    TextStyle(backgroundColor: Colors.amber)),
                             ),
                             Container(
                               width: 400,
                               height: 100,
                               decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black),
                             ),
                             child: Text(
                                "Alamat : " +
                                    supplierController
                                        .supplierList[index].alamat
                                        .toString(),
                                style:
                                    TextStyle(backgroundColor: Colors.amber)),
                             ),
                             Container(
                                width: 400,
                                height: 100,
                                decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                                   border: Border.all(color: Colors.black),
                             ),
                             child: Text(
                                "No Telepon : " +
                                    supplierController
                                        .supplierList[index].noTelp
                                        .toString(),
                                style:
                                    TextStyle(backgroundColor: Colors.amber)),
                              ),
                              Container(
                                 width: 400,
                                 height: 100,
                                 decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black),
                             ),
                              child: Text(
                                "Nama Perusahaan : " +
                                    supplierController
                                        .supplierList[index].namaPerusahaan
                                        .toString(),
                                style:
                                    TextStyle(backgroundColor: Colors.amber)),
                              ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
      ),
    );
  }
}
