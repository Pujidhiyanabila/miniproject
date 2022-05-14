import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/providers/result_state_provider.dart';

class EyebrowViewModel extends ChangeNotifier {
  final ApiService apiService;
  final String id;

  EyebrowViewModel({required this.apiService, required this.id}) {
    eyebrowProduct();
  }

  String _message = '';
  late dynamic _eyebrowResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _eyebrowResult;
  ResultState get state => _state;

  Future<dynamic> eyebrowProduct() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final getEyebrowProduct = await apiService.getEyebrowProduct();
      _state = ResultState.hasData;
      notifyListeners();
      return _eyebrowResult = getEyebrowProduct.eyebrowmodels;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}