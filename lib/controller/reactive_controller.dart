import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class ReactiveController extends GetxController {
  //Getx
  RxInt counter = 0.obs;
  RxString currentDate = "".obs;

  //Listas
  RxList<String> items = <String>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  void increment() {
    this.counter++;
  }

  void drecrement() {
    this.counter--;
  }

  void getDate() {
    this.currentDate.value = DateTime.now().toString();
  }

  void addItem() {
    this.items.add(DateTime.now().toString());
  }

  void deleteItem(int index) {
    this.items.removeAt(index);
  }
}
