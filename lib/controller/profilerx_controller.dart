import 'package:flutter_getx/api/users_api.dart';
import 'package:flutter_getx/models/user_model.dart';
import 'package:flutter_getx/pages/profile_page.dart';
import 'package:get/get.dart';

class ProfileRxController extends GetxController {
  RxList<UserModel> _users = RxList<UserModel>();
  RxList<UserModel> get users => _users;
  @override
  void onInit() {
    super.onInit();

    print("iniciar oninit HomeAPIController");
  }

  @override
  onReady() {
    super.onReady();
    _loadUsers();
  }

  Future<void> _loadUsers() async {
    RxList<UserModel> data =
        await UsersAPI.intance.getUsers(1) as RxList<UserModel>;
    _users = data;

    update(["users"]);
  }

  showProfile({required UserModel user}) async {
    /*  Get.to(
      () => ProfilePage(),
      arguments: user,
    ); */
    final result = await Get.to(
      () => ProfilePage(),
      arguments: user,
    );

    if (result != null) {
      print(result);
    }
    //arguments: {"userId": 1},
  }
}
