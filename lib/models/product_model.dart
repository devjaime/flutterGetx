// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

class ProductModel {
  ProductModel({
    required this.productId,
    required this.sku,
    required this.name,
    required this.productUrl,
    required this.price,
    required this.retailPrice,
    required this.thumbnainUrl,
    required this.searchKeywords,
    required this.description,
  });

  int productId;
  String sku;
  String name;
  String productUrl;
  double price;
  double retailPrice;
  String thumbnainUrl;
  String searchKeywords;
  String description;

  bool isFavorite = false;

  factory ProductModel.fromRawJson(String str) =>
      ProductModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        productId: json["Product ID"],
        sku: json["SKU"],
        name: json["Name"],
        productUrl: json["Product URL"],
        price: json["Price"].toDouble(),
        retailPrice: json["Retail Price"].toDouble(),
        thumbnainUrl: json["Thumbnain URL"],
        searchKeywords: json["Search Keywords"],
        description: json["Description"],
      );

  Map<String, dynamic> toJson() => {
        "Product ID": productId,
        "SKU": sku,
        "Name": name,
        "Product URL": productUrl,
        "Price": price,
        "Retail Price": retailPrice,
        "Thumbnain URL": thumbnainUrl,
        "Search Keywords": searchKeywords,
        "Description": description,
      };
}
