import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/providers/result_state_provider.dart';

class NailPolishViewModel extends ChangeNotifier {
  final ApiService apiService;
  final String id;

  NailPolishViewModel({required this.apiService, required this.id}) {
    nailPolishProduct();
  }

  String _message = '';
  late dynamic _nailpolishResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _nailpolishResult;
  ResultState get state => _state;

  Future<dynamic> nailPolishProduct() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final getNailPolishProduct = await apiService.getNailPolishProduct();
      _state = ResultState.hasData;
      notifyListeners();
      return _nailpolishResult = getNailPolishProduct.nailpolishmodels;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}