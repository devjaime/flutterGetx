import 'package:flutter/material.dart';
import 'package:flutter_getx/models/user_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  String text = "";
  late UserModel _user;
  UserModel get user => _user;

  String _inpuText = "";

  @override
  void onInit() {
    super.onInit();
    print(Get.arguments);
    this._user = Get.arguments as UserModel;
  }

  @override
  void onReady() {
    super.onReady();
  }

  void onInputTextChanged(String text) {
    this._inpuText = text;
    print(_inpuText);
  }

// Get.back = Retroceder
// Get.to = Ir a una pagina
  void backHomeWithData() {
    if (_inpuText.trim().length > 0) {
      Get.back(result: this._inpuText);
    } else {
      Get.dialog(
        AlertDialog(
          title: Text("Error"),
          content: Text("Ingrese un valor"),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("ACEPTAR"))
          ],
        ),
      );
    }
  }
}
