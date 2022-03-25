import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/supplier_model.dart';

class SupplierService {
  static Future<SupplierModel> fetchSupplierData() async {
    final response = await http
        .get(Uri.parse('https://rizkyn-ujikom.herokuapp.com/api/supplier'));

    if (response.statusCode == 200) {
      var data = response.body;
      return SupplierModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
