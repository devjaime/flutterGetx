import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfileRxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (_) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Profile"),
              ),
              /* body: Center(
              child: Text("${_.user.firstName} ${_.user.lastName}"),
            ), */
              body: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${_.user.firstName} ${_.user.lastName}"),
                    SizedBox(height: 10.0),
                    CupertinoTextField(
                      /*  onChanged: (value) {
                        _.onInputTextChanged(value);
                      }, */
                      onChanged: _.onInputTextChanged,
                    ),
                    SizedBox(height: 10.0),
                    CupertinoButton(
                      child: Text("Aceptar"),
                      onPressed: _.backHomeWithData,
                      /*  onPressed: () {
                        _.backHomeWithData();
                      }, */
                    )
                  ],
                ),
              ));
        });
  }
}
