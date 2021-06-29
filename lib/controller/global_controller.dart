import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_getx/models/product_model.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  RxInt _recuperar = 0.obs;
  //Map
  Map<String, ProductModel> _favorites = Map();
  Map<String, ProductModel> get favorites => _favorites;

  @override
  void onInit() {
    super.onInit();
    print("Init GlobalController");
  }

  @override
  void onReady() {
    super.onReady();
    _loadProducts();
  }

/*   Future<String> _loadProducts() async {
    return await rootBundle.loadString("assets/products.json");
  }

  Future _parseJson() async {
    String jsonString = await _loadProducts();
    this._products = (jsonDecode(jsonString) as List)
        .map((e) => ProductModel.fromJson(e))
        .toList();
    update(["product"]);
  } */

  Future<void> _loadProducts() async {
    final data = await rootBundle.loadString("assets/products.json");

    this._products = (jsonDecode(data) as List)
        .map((e) => ProductModel.fromJson(e))
        .toList();

    update(["product"]);
  }

  onFavorite(int index, bool isFavorite) {
    final product = this._products[index];
    product.isFavorite = isFavorite;

    if (isFavorite) {
      this._favorites[product.name] = product;
    } else {
      this._favorites.remove(product.name);
    }
    update(["product", "favorite"]);
  }

  recibirValor(int valor) {
    _recuperar.value = valor;
  }
}
