import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/providers/result_state_provider.dart';

class BronzerViewModel extends ChangeNotifier {
  final ApiService apiService;
  final String id;

  BronzerViewModel({required this.apiService, required this.id}) {
    bronzerProduct();
  }

  String _message = '';
  late dynamic _bronzerResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _bronzerResult;
  ResultState get state => _state;

  Future<dynamic> bronzerProduct() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final getBronzerProduct = await apiService.getBronzerProduct();
      _state = ResultState.hasData;
      notifyListeners();
      return _bronzerResult = getBronzerProduct.bronzermodels;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}