import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/customerController.dart';

class DataCustomer extends StatelessWidget {
  const DataCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CustomerController customerController = Get.put(CustomerController());
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
        title: Text("Data Customer"),
        centerTitle: true,
      ),
      body: Obx(
        () => customerController.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: customerController.customerList.length,
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
                                  customerController.customerList[index].kode
                                      .toString(),
                              style: TextStyle(fontSize: 15, color: Colors.white, fontweight: FontWeight.bold)),
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
                                    customerController
                                        .customerList[index].nama
                                        .toString(),
                                style:
                                    TextStyle(fontSize: 15, color: Colors.white, fontweight: FontWeight.bold)),
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
                                    customerController
                                        .custometList[index].alamat
                                        .toString(),
                                style:
                                    TextStyle(fontSize: 15, color: Colors.white, fontweight: FontWeight.bold)),
                             ),
                             Container(
                               width: 400,
                               height: 100,
                               decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black),
                               ),
                               child: Text(
                                "Email : " +
                                    customerController
                                        .customerList[index].email
                                        .toString(),
                                style:
                                    TextStyle(fontSize: 15, color: Colors.white, fontweight: FontWeight.bold)),
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
                                    customerController
                                        .customerList[index].telepon
                                        .toString(),
                                style:
                                    TextStyle(fontSize: 15, color: Colors.white, fontweight: FontWeight.bold)),
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
