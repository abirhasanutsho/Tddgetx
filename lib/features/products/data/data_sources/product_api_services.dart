import 'dart:convert';

import '../model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductApiServices {
  static Future<ProductModel?> getProductFromAPi() async {
    final response = await http
        .get(Uri.parse("https://api.slingacademy.com/v1/sample-data/users"));
    if (response.statusCode == 200) {
      var jsondata = json.decode(response.body);

      return ProductModel.fromJson(jsondata);
    } else {
      return null;
    }
  }
}
