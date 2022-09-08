

import 'package:flutter_task/design/presentation/screens/forget_password_screen.dart';
import 'package:get/get.dart';




  class AuthViewModel extends GetxController {


  late String  pass,phone;
  bool  obscureText =true;
  int valx=0;
  EmailOrPhone? choice =EmailOrPhone.googleAccount;







  void passwordVisibility() async {

   obscureText = !obscureText;
   update();
  }

  void emailOrphone(EmailOrPhone ? val) async {

    choice = val;
    if(val==EmailOrPhone.googleAccount){
      valx= 0;
    }
    if(val==EmailOrPhone.phoneNumber){
      valx= 1;
    }



    update();
  }

  void signInWithPhoneAndPassword() async {


  }

  void signInWithEmailAndPasswordAsAguest() async {

  }
  void createAccountWithEmailAndPassword() async {

  }



  Future verifyPhoneNumber()async{

  }




  void ResetPassword()async{




  }


}