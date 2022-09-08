
import 'package:flutter/material.dart';
import 'package:flutter_task/core/helper/binding.dart';
import 'package:flutter_task/design/presentation/controller/auth_view_model.dart';
import 'package:flutter_task/design/presentation/controller/home_view_model.dart';
import 'package:flutter_task/design/presentation/controller/request_view_model.dart';
import 'package:flutter_task/design/presentation/screens/onboarding_view.dart';
import 'package:get/get.dart';

import 'design/presentation/screens/splash_screen.dart';


void main() async {

    Get.put(HomeViewModel());
    Get.put(RequestViewModel());
    Get.put(AuthViewModel());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
        initialBinding:Binding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SpalshScreen(),


    );

  }

}



