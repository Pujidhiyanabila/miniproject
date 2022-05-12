import 'dart:async';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/data/models/api_model.dart';
import 'package:flutter/material.dart';

class ApiProvider extends ChangeNotifier{
  List<ProductColors> _productColors = [];
  List<ProductColors> get product_colors => _productColors;

  Future<void> getAllProductColors() async {
    final apiservice = ApiService();

    try{
      final newProductColors = await apiservice.getProductdata();

      _productColors = newProductColors ?? [];

      print("HasilViewModelSuccess : $_productColors");
    } catch (e){
      print("HasilViewModelError : $e");
    }

    notifyListeners();
  }
}