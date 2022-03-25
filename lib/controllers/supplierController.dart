import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:ujikom/services/supplier_service.dart';
import '../models/supplier_model.dart';

class SupplierController extends GetxController {
  var supplierList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserData();
  }

  void fetchUserData() async {
    try {
      isLoading(true);
      var supplier = await SupplierService.fetchArtikelData();
      supplierList.value = supplier.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
