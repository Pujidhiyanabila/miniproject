import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/providers/result_state_provider.dart';

class EyeshadowViewModel extends ChangeNotifier {
  final ApiService apiService;
  final String id;

  EyeshadowViewModel({required this.apiService, required this.id}) {
    eyeshadowProduct();
  }

  String _message = '';
  late dynamic _eyeshadowResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _eyeshadowResult;
  ResultState get state => _state;

  Future<dynamic> eyeshadowProduct() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final getEyeshadowProduct = await apiService.getEyeshadowProduct();
      _state = ResultState.hasData;
      notifyListeners();
      return _eyeshadowResult = getEyeshadowProduct.eyeshadowmodels;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}