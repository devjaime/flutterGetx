import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home_global_page.dart';
//import 'package:flutter_getx/pages/home_page.dart';
//import 'package:flutter_getx/pages/splash_page.dart';
import 'package:get/get.dart';

import 'controller/global_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Utilizamos put para instanaciar la clase
    Get.put(GlobalController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeGlobalPage(),
    );
  }
}
