import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:beautyshining/data/models/api_model.dart';

class ApiService {
  static final String _baseUrl = 'https://makeup-api.herokuapp.com/api/v1/products.json';

  Future<List<ApiModel>> getProduct() async {
    // final response =
    //     await client.get(Uri.parse('$BASE_URL/movie/now_playing?$API_KEY'));

    // if (response.statusCode == 200) {
    //   return ApiModel.fromJson(json.decode(response.body));
    // } else {
    //   throw Exception('Failed to load top headlines');
    // }
    final response = await Dio().get(_baseUrl);
    final res = response.data as List<ApiModel>;
    return res;
  }
}