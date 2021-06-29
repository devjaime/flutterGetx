import 'package:flutter_getx/models/user_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  String text = "";
  late UserModel _user;
  UserModel get user => _user;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print(Get.arguments);
    this._user = Get.arguments as UserModel;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}
