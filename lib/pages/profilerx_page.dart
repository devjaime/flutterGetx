import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/profilerx_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfileRxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileRxController>(
      init: ProfileRxController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Consumo de Api Getx"),
          ),
          body: Obx(
            () => ListView.builder(
                itemCount: _.users.length,
                itemBuilder: (context, index) {
                  final user = _.users[index];
                  return ListTile(
                    onTap: () {
                      _.showProfile(user: user);
                    },
                    title: Text(user.firstName),
                    subtitle: Text(user.email),
                    trailing: Icon(Icons.arrow_forward_ios),
                  );
                }),
          ),
        );
      },
    );
  }
}
