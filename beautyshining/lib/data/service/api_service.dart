import 'dart:convert';
// import 'package:dio/dio.dart';
import 'package:beautyshining/data/models/blush_model.dart';
import 'package:beautyshining/data/models/bronzer_model.dart';
import 'package:beautyshining/data/models/eyebrow_model.dart';
import 'package:beautyshining/data/models/eyeliner_model.dart';
import 'package:beautyshining/data/models/eyeshadow_model.dart';
import 'package:beautyshining/data/models/foundation_model.dart';
import 'package:beautyshining/data/models/lip_liner_model.dart';
import 'package:beautyshining/data/models/lipstick_model.dart';
import 'package:beautyshining/data/models/mascara_model.dart';
import 'package:beautyshining/data/models/nail_polish_model.dart';
import 'package:http/http.dart' as http;

// class ApiService {
//   static final String _baseUrl = 'https://makeup-api.herokuapp.com/api/v1/products.json';

//   Future<List<ApiModel>> getProduct() async {
//     final response = await Dio().get(_baseUrl);
    
//     final res = response.data as List<ApiModel>;
    
//     return res;
//   }
// }

class ApiService {
  static final String baseUrl = 'https://makeup-api.herokuapp.com/api/v1/products.json';
  
  Future<BlushListModel> getBlushProduct() async {
    final response = 
      await http.get(Uri.parse('$baseUrl?product_type=blush'));
    
    if (response.statusCode == 200) {
      return BlushListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product');
    }
  }

  Future<BronzerListModel> getBronzerProduct() async {
    final response = 
      await http.get(Uri.parse('$baseUrl?product_type=bronzer'));
    
    if (response.statusCode == 200) {
      return BronzerListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product');
    }
  }

  Future<EyebrowListModel> getEyebrowProduct() async {
    final response = 
      await http.get(Uri.parse('$baseUrl?product_type=eyebrow'));
    
    if (response.statusCode == 200) {
      return EyebrowListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product');
    }
  }

  Future<EyelinerListModel> getEyelinerProduct() async {
    final response = 
      await http.get(Uri.parse('$baseUrl?product_type=eyeliner'));
    
    if (response.statusCode == 200) {
      return EyelinerListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product');
    }
  }

  Future<EyeshadowListModel> getEyeshadowProduct() async {
    final response = 
      await http.get(Uri.parse('$baseUrl?product_type=eyeshadow'));
    
    if (response.statusCode == 200) {
      return EyeshadowListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product');
    }
  }

  Future<FoundationListModel> getFoundationProduct() async {
    final response = 
      await http.get(Uri.parse('$baseUrl?product_type=foundation'));
    
    if (response.statusCode == 200) {
      return FoundationListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product');
    }
  }

  Future<LipLinerListModel> getLipLinerProduct() async {
    final response = 
      await http.get(Uri.parse('$baseUrl?product_type=lip_liner'));
    
    if (response.statusCode == 200) {
      return LipLinerListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product');
    }
  }

  Future<LipstickListModel> getLipstickProduct() async {
    final response = 
      await http.get(Uri.parse('$baseUrl?product_type=lipstick'));
    
    if (response.statusCode == 200) {
      return LipstickListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product');
    }
  }

  Future<MascaraListModel> getMascaraProduct() async {
    final response = 
      await http.get(Uri.parse('$baseUrl?product_type=mascara'));
    
    if (response.statusCode == 200) {
      return MascaraListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product');
    }
  }

  Future<NailPolishListModel> getNailPolishProduct() async {
    final response = 
      await http.get(Uri.parse('$baseUrl?product_type=nail_olishw'));
    
    if (response.statusCode == 200) {
      return NailPolishListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load product');
    }
  }
}