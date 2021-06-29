import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/controller/home_api_controller.dart';

class HomeAPIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeAPIController>(
      id: "users",
      init: HomeAPIController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Consumo de Api Getx"),
          ),
          body: ListView.builder(
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
        );
      },
    );
  }
}
