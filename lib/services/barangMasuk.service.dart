import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/barangMasuk_model.dart';

class BarangMasukService {
  static Future<BarangMasukModel> fetchArtikelData() async {
    final response = await http
        .get(Uri.parse('https://rizkyn-ujikom.herokuapp.com/api/barang-masuk'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BarangMasukModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
