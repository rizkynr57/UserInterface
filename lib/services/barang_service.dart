import 'dart:convert';

import 'package:http/http.dart' as http;

// import '../models/artikel_model.dart';

class BarangService {
  static Future<BarangModel> fetchArtikelData() async {
    final response = await http
        .get(Uri.parse('https://rizkyn-ujikom.herokuapp.com/api/barang'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BarangModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
