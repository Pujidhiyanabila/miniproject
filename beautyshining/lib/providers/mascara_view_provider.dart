import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/providers/result_state_provider.dart';

class MascaraViewModel extends ChangeNotifier {
  final ApiService apiService;
  final String id;

  MascaraViewModel({required this.apiService, required this.id}) {
    mascaraProduct();
  }

  String _message = '';
  late dynamic _mascaraResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _mascaraResult;
  ResultState get state => _state;

  Future<dynamic> mascaraProduct() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final getMascaraProduct = await apiService.getMascaraProduct();
      _state = ResultState.hasData;
      notifyListeners();
      return _mascaraResult = getMascaraProduct.mascaramodels;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}