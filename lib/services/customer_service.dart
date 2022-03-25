import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/customer_model.dart';

class CustomerService {
  static Future<CustomerModel> fetchCustomerData() async {
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
