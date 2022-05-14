import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/providers/result_state_provider.dart';

class LipLinerViewModel extends ChangeNotifier {
  final ApiService apiService;
  final String id;

  LipLinerViewModel({required this.apiService, required this.id}) {
    lipLinerProduct();
  }

  String _message = '';
  late dynamic _liplinerResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _liplinerResult;
  ResultState get state => _state;

  Future<dynamic> lipLinerProduct() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final getLipLinerProduct = await apiService.getLipLinerProduct();
      _state = ResultState.hasData;
      notifyListeners();
      return _liplinerResult = getLipLinerProduct.liplinermodels;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}