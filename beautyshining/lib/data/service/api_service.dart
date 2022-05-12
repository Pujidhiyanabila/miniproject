import 'dart:convert';
import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
import 'package:beautyshining/data/models/api_model.dart';

// class ApiService {
//   static final String _baseUrl = 'https://makeup-api.herokuapp.com/api/v1/products.json';

//   Future<List<ApiModel>> getProduct() async {
//     final response = await Dio().get(_baseUrl);
    
//     final res = response.data as List<ApiModel>;
    
//     return res;
//   }
// }

class ApiService {
  Future<List<ProductColors>?> getProductdata() async {
    final response = 
      await Dio().get("https://makeup-api.herokuapp.com/api/v1/products.json");
    
    final res = ApiModel.fromJson(response.data);

    List<ProductColors>? product_colors = res.productColors;

    return product_colors;
  }
}