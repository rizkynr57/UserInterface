import 'dart:convert';

import 'package:http/http.dart' as http;

// import '../models/artikel_model.dart';

class CustomerService {
  static Future<CustomerModel> fetchArtikelData() async {
    final response = await http
        .get(Uri.parse('https://rizkyn-ujikom.herokuapp.com/api/customer'));

    if (response.statusCode == 200) {
      var data = response.body;
      return CustomerModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
