import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/controller/home_api_controller.dart';

class HomeAPIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeAPIController>(
      init: HomeAPIController(),
      builder: (_) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Consumo de Api Getx"),
            ),
            body: Center(
              child: Text("Hola Mundo!"),
            ));
      },
    );
  }
}
