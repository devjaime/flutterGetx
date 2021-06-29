import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/global_controller.dart';
import 'package:flutter_getx/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeGlobalPage extends StatelessWidget {
  final HomeController _controller = new HomeController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: _controller,
        builder: (_) {
          print("dibujando Widget");
          return Scaffold(
            appBar: AppBar(
              title: GetBuilder<GlobalController>(
                id: "favorite",
                builder: (_) {
                  return Text("Favoritos: ${_.favorites.length}");
                },
              ),
              //Text("Estados Globales - GETX"),
              actions: [],
            ),
            body: GetBuilder<GlobalController>(
                id: "product",
                builder: (_) {
                  return ListView.builder(
                      itemCount: _.products.length,
                      itemBuilder: (context, index) {
                        final product = _.products[index];
                        return ListTile(
                          title: Text(product.name),
                          subtitle: Text("USD ${product.price}"),
                          trailing: IconButton(
                            icon: Icon(Icons.favorite,
                                color: product.isFavorite
                                    ? Colors.pinkAccent
                                    : Colors.grey),
                            onPressed: () {
                              _.onFavorite(index, !product.isFavorite);
                            },
                          ),
                        );
                      });
                }),
          );
        });
  }
}
