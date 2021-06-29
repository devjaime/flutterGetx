import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/global_controller.dart';
import 'package:flutter_getx/controller/reactive_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _globalController = GlobalController();
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
      builder: (_) {
        print("Render Widget");
        return Scaffold(
          appBar: AppBar(
            title: Text("Reactivos y Observables"),
          ),
/*           body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    "Sumar: ${_.counter}",
                    style: TextStyle(fontSize: 50.0),
                  ),
                ),
                Obx(
                  () => Text(
                    "Restar: ${_.counter}",
                    style: TextStyle(fontSize: 50.0),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Obx(() => Text(
                      "Date: ${_.currentDate}",
                      style: TextStyle(fontSize: 50.0),
                    ))
              ],
            ),
          ), */
          body: Obx(
            () => ListView.builder(
              itemCount: _.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_.items[index]),
                  trailing: IconButton(
                    onPressed: () {
                      _.deleteItem(index);
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  _.drecrement;
                  _globalController.recibirValor(_.counter.value);
                },
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
              SizedBox(
                width: 10.0,
              ),
              FloatingActionButton(
                onPressed: _.addItem,
                tooltip: 'Date',
                child: Icon(Icons.calendar_today),
              ),
            ],
          ),
        );
      },
    );
  }
}
