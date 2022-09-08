

import 'package:get/get.dart';




class RequestViewModel extends GetxController {

  int selectedIndex=0;
  int  activeToggledIndex=0;



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

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void changeIndex(int index){

    selectedIndex= index;
    update();
  }

  void changeToogleIndex(int index){
    activeToggledIndex = index;
    update();
  }




}