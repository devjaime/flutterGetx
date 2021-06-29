import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/calculadora_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CalculadoraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculadoraController>(
      init: CalculadoraController(),
      builder: (_) {
        print("Render Widget");
        return Scaffold(
          appBar: AppBar(
            title: Text("Calculadora Simple"),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    "Resultado: ${_.mathResult.value}",
                    style: TextStyle(fontSize: 50.0),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                CupertinoTextField(
                  placeholder: "Ingrese primer valor",
                  onChanged: _.onInputTextChanged_1,
                ),
                SizedBox(
                  height: 40,
                ),
                CupertinoTextField(
                  placeholder: "Ingrese Segundo valor",
                  onChanged: _.onInputTextChanged_2,
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 10.0,
              ),
              FloatingActionButton(
                onPressed: _.resta,
                tooltip: 'restar',
                child: Icon(Icons.minimize_outlined),
              ),
              SizedBox(
                width: 10.0,
              ),
              FloatingActionButton(
                onPressed: _.suma,
                tooltip: 'sumar',
                child: Icon(Icons.add),
              ),
              SizedBox(
                width: 10.0,
              ),
              FloatingActionButton(
                onPressed: _.multiplicar,
                tooltip: 'multiplicar',
                child: Icon(Icons.multiple_stop_rounded),
              ),
              SizedBox(
                width: 10.0,
              ),
              FloatingActionButton(
                onPressed: _.dividir,
                tooltip: 'dividir',
                child: Icon(Icons.dashboard),
              ),
            ],
          ),
        );
      },
    );
  }
}
