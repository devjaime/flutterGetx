import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/widgets/home_api_page.dart';
import 'package:flutter_getx/pages/home_id_pages.dart';
import 'package:flutter_getx/pages/home_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("Inicia splash init");
    super.onInit();
  }

  @override
  void onReady() {
    print('Inicia spash onReady');
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      /* Get.dialog(AlertDialog(
        title: Text("Estoy pintandome"),
      ));*/
      //Get.to(() => HomePage(), transition: Transition.zoom);
      //Finalizar el controller
      //Get.off(() => HomePage(), transition: Transition.zoom);
      //Get.off(() => HomeIDPage(), transition: Transition.zoom);
      Get.off(() => HomeAPIPage(), transition: Transition.zoom);
    });
  }

  @override
  void onClose() {
    print("finalizando splash");
    super.onClose();
  }
}
