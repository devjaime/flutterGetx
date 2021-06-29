import 'package:flutter_getx/api/users_api.dart';
import 'package:flutter_getx/models/user_model.dart';
import 'package:get/get.dart';

class HomeAPIController extends GetxController {
  List<UserModel> _users = [];
  List<UserModel> get users => _users;
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
    final data = await UsersAPI.intance.getUsers(1);
    _users = data;

    update(["users"]);
  }
}
