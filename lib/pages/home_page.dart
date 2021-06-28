import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = new HomeController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: _controller,
        builder: (_) {
          print("dibujando Widget");
          return Scaffold(
              appBar: AppBar(
                title: Text("Intro a Getx"),
              ),
              body: Center(child: Text("${_.counter}")),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endDocked,
              floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: _.drecrement,
                    tooltip: 'restar',
                    child: Icon(Icons.minimize_outlined),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  FloatingActionButton(
                    onPressed: _.increment,
                    tooltip: 'sumar',
                    child: Icon(Icons.add),
                  ),
                ],
              ));
        });
  }
}
