import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:ujikom/services/barangMasuk_service.dart';
import '../models/barang-masuk_model.dart';

class BarangMasukController extends GetxController {
  var barangMasukList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBarangMasukData();
  }

  void fetchBarangMasukData() async {
    try {
      isLoading(true);
      var barangMasuk = await BarangMasukService.fetchBarangMasukData();
      barangMasukList.value = barangMasuk.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
