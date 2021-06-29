import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CalculadoraController extends GetxController {
  //Getx
  RxDouble _counter = 0.0.obs;
  RxDouble get counter => _counter;
  //Listas
  RxList<String> items = <String>[].obs;

  String _inpuText_1 = "";
  String _inpuText_2 = "";

  var operation = '+'.obs;

  var mathResult = '0'.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void suma() {
    operation.value = '+';
    calculateResult();
  }

  void resta() {
    operation.value = '-';
    calculateResult();
  }

  void multiplicar() {
    operation.value = 'X';
    calculateResult();
  }

  void dividir() {
    operation.value = '/';
    calculateResult();
  }

  void onInputTextChanged_1(String text) {
    this._inpuText_1 = text;
    //print(this._inpuText_1);
  }

  void onInputTextChanged_2(String text) {
    this._inpuText_2 = text;
  }

  calculateResult() {
    double num1 = double.parse(this._inpuText_1);
    double num2 = double.parse(this._inpuText_2);

    //secondNumber.value = mathResult.value;
    //print(operation.value);
    switch (operation.value) {
      case '+':
        mathResult.value = '${num1 + num2}';
        break;

      case '-':
        mathResult.value = '${num1 - num2}';
        break;

      case '/':
        mathResult.value = '${num1 / num2}';
        break;

      case 'X':
        mathResult.value = '${num1 * num2}';
        break;

      default:
        return;
    }

    print(mathResult.value);
  }
}
