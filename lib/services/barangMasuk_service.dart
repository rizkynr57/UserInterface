import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/barang-masuk_model.dart';

class BarangMasukService {
  static Future<BarangMasukModel> fetchBarangMasukData() async {
    final response = await http
        .get(Uri.parse('https://rizkyn-ujikom.herokuapp.com/api/barang-masuk'));

    if (response.statusCode == 201) {
      var data = response.body;
      return BarangMasukModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
