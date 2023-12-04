import 'dart:convert';

import '../model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductApiServices {
  static Future<List<UserModel>?> getProductFromAPi() async {
    final response = await http
        .get(Uri.parse("https://api.slingacademy.com/v1/sample-data/users"));
    if (response.statusCode == 200) {

      List<dynamic> users = jsonDecode(response.body)["users"];
      print("sssss"+users.length.toString());
      return users.map((e) => UserModel.fromJson(e)).toList();

    } else {
      return null;
    }
  }
}
