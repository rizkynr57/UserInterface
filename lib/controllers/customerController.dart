import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:ujikom/services/customer_service.dart';
import '../models/customer_model.dart';

class CustomerController extends GetxController {
  var customerList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCustomerData();
  }

  void fetchCustomerData() async {
    try {
      isLoading(true);
      var customer = await CustomerService.fetchCustomerData();
      customerList.value = customer.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
