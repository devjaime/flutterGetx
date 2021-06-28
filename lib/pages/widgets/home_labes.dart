import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/home_controller.dart';

import 'package:get/get.dart';

class HomeLabes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController>(
            id: "sumar",
            builder: (_) {
              print("build counter sumar");
              return Center(
                child: Text("Sumar: ${_.counter}"),
              );
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          GetBuilder<HomeController>(
            id: "restar",
            builder: (_) {
              print("build counter restar");
              return Center(
                child: Text("Restar: ${_.counter}"),
              );
            },
          ),
        ],
      ),
    );
  }
}
