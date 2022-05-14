import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/providers/result_state_provider.dart';

class EyelinerViewModel extends ChangeNotifier {
  final ApiService apiService;
  final String id;

  EyelinerViewModel({required this.apiService, required this.id}) {
    eyelinerProduct();
  }

  String _message = '';
  late dynamic _eyelinerResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _eyelinerResult;
  ResultState get state => _state;

  Future<dynamic> eyelinerProduct() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final getEyelinerProduct = await apiService.getEyelinerProduct();
      _state = ResultState.hasData;
      notifyListeners();
      return _eyelinerResult = getEyelinerProduct.eyelinermodels;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}