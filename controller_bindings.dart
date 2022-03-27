import 'package:get/instance_manager.dart';

import 'controllers/supplierController.dart';
import 'controllers/customerController.dart';
import 'controllers/barangMasukController.dart';
import 'controllers/barangKeluarController.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<SupplierController>(SupplierController());
    Get.put<CustomerController>(CustomerController());
    Get.put<BarangMasukController>(BarangMasukController());
    Get.put<BarangKeluarController>(BarangKeluarController());
  }
}
