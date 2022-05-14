import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/providers/result_state_provider.dart';

class BlushViewModel extends ChangeNotifier {
  final ApiService apiService;
  final String id;

  BlushViewModel({required this.apiService, required this.id}) {
    blushProduct();
  }

  String _message = '';
  late dynamic _blushResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _blushResult;
  ResultState get state => _state;

  Future<dynamic> blushProduct() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final getBlushProduct = await apiService.getBlushProduct();
      _state = ResultState.hasData;
      notifyListeners();
      return _blushResult = getBlushProduct.blushmodels;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}