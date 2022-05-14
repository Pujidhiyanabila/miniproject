import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beautyshining/data/service/api_service.dart';
import 'package:beautyshining/providers/result_state_provider.dart';

class FoundationViewModel extends ChangeNotifier {
  final ApiService apiService;
  final String id;

  FoundationViewModel({required this.apiService, required this.id}) {
    foundationProduct();
  }

  String _message = '';
  late dynamic _foundationResult;
  late ResultState _state;

  String get message => _message;
  dynamic get result => _foundationResult;
  ResultState get state => _state;

  Future<dynamic> foundationProduct() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final getFoundationProduct = await apiService.getFoundationProduct();
      _state = ResultState.hasData;
      notifyListeners();
      return _foundationResult = getFoundationProduct.foundationmodels;
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error: $e';
    }
  }
}