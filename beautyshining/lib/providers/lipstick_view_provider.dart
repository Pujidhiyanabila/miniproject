import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/providers/result_state_provider.dart';

class LipstickViewModel extends ChangeNotifier {
  final ApiService apiService;
  final String id;

  LipstickViewModel({required this.apiService, required this.id}) {
    lipstickProduct();
  }

  String _message = '';
  late dynamic _lipstickResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _lipstickResult;
  ResultState get state => _state;

  Future<dynamic> lipstickProduct() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final getLipstickProduct = await apiService.getLipstickProduct();
      _state = ResultState.hasData;
      notifyListeners();
      return _lipstickResult = getLipstickProduct.lipstickmodels;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}