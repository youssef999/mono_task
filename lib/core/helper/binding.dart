

import 'package:flutter_task/design/presentation/controller/auth_view_model.dart';
import 'package:flutter_task/design/presentation/controller/home_view_model.dart';
import 'package:flutter_task/design/presentation/controller/request_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings
{
  @override
  void dependencies() {

    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => RequestViewModel());
  }
}
