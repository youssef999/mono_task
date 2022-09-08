


import 'package:flutter_task/design/presentation/screens/service_view.dart';
import 'package:get/get.dart';




class HomeViewModel extends GetxController {

 int selectedIndex=0;




  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  void changeIndex(int index){



     selectedIndex= index;
     update();
     if(index ==1){
       Get.to(() => ServiceViewScreen());
     }
  }




}