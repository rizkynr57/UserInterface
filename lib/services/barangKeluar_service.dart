import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/barang-keluar_model.dart';

class BarangKeluarService {
  static Future<BarangKeluarModel> fetchBarangKeluarData() async {
    final response = await http.get(
        Uri.parse('https://rizkyn-ujikom.herokuapp.com/api/barang-keluar'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BarangKeluarModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
