import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../models/Product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items {
    return [..._items];
  }

  Future<void> getProducts() async {
    try {
      final response =
          await Dio().get("https://jsonplaceholder.typicode.com/posts");
      final List<dynamic> body = response.data;
      for (var data in body) {
        _items.add(Product.fromJson(data));
      }
      notifyListeners();
    } on DioError catch (e) {
      print(e);
    }
  }
}
