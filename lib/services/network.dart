import 'dart:convert';
import 'package:bregzy_vendor/config.dart';
import 'package:bregzy_vendor/models/vendors_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart'as http ;



class Network {
  Future getProducts() async {
    final url = "https://bregzy.com/wp-json/wc/v1/${Config
        .productsUrl}consumer_key=${Config.key}&consumer_secret=${Config
        .secret}";
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    }
  }
}

// ignore: non_constant_identifier_names
Future<Vendors> VendorLogin({String username, String password})async{
  Vendors model ;
  try {
    var response = await Dio().post(
        "https://bregzy.com/wp-json/jwt-auth/v1/token",
        data: {
          "username": username,
          "password": password
        },

    );
    if (response.statusCode == 200) {
      model = Vendors.fromJson(response.data);

    }
  }on DioError catch(e){
    print(e.message);
  }
  return model;
}