import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  int _totalPrice = 0;

  int get totalPrice => _totalPrice;

  void _setPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('cart_item', _counter);
    prefs.setInt('total_price', _totalPrice);
    notifyListeners();
  }

  void _getPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('cart_item') ?? 0;
    _totalPrice = (prefs.getDouble('cart_item') ?? 0.0) as int;

    notifyListeners();
  }

  void addTotalPrice(double productPrice) {
    _totalPrice = (_totalPrice + productPrice) as int;
    _setPrefItems();
    notifyListeners();
  }

  void removeTotalPrice(double productPrice) {
    _totalPrice = (_totalPrice - productPrice) as int;
    _setPrefItems();
    notifyListeners();
  }

  int getTotaLPrice() {
    _getPrefItems();
    return _totalPrice;
  }

  void addCounter() {
    _counter++;
    _setPrefItems();
    notifyListeners();
  }

  void removerCounter() {
    _counter--;
    _setPrefItems();
    notifyListeners();
  }

  int getCounter() {
    _getPrefItems();
    return _counter;
  }
}
