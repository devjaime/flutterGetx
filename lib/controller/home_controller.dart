import 'package:get/get.dart';

class HomeController extends GetxController {
  int _counter = 0;

  int get counter => _counter;

  @override
  void onInit() {
    print("inicia oninit");
    super.onInit();
  }

  @override
  void onReady() {
    print("inicia onready");
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void increment() {
    this._counter++;
    //update();
    update(["sumar"]);
  }

  void drecrement() {
    this._counter--;
    // update();
    update(["restar"]);
  }
}
