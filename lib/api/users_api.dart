import 'package:dio/dio.dart';
import 'package:flutter_getx/models/user_model.dart';

class UsersAPI {
  UsersAPI._internal();
  static UsersAPI _instance = UsersAPI._internal();
  static UsersAPI get intance => _instance;

  Future<List<UserModel>> getUsers(int page) async {
    var dio = Dio();
    final response =
        await dio.get('https://reqres.in/api/users', queryParameters: {
      "page": page,
    });
    print(response.data);
    return (response.data["data"] as List)
        .map((item) => UserModel.fromJson(item))
        .toList();
  }
}
