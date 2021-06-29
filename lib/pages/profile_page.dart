import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/profile_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Profile"),
            ),
            body: Center(
              child: Text("${_.user.firstName} ${_.user.lastName}"),
            ),
          );
        });
  }
}
