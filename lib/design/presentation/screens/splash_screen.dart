
import 'package:flutter/material.dart';
import 'package:flutter_task/design/presentation/controller/auth_view_model.dart';
import 'package:flutter_task/design/presentation/controller/home_view_model.dart';
import 'package:flutter_task/design/presentation/controller/request_view_model.dart';
import 'package:flutter_task/design/presentation/resources/assets_manager.dart';
import 'package:flutter_task/design/presentation/resources/color_manager.dart';
import 'package:flutter_task/design/presentation/resources/strings_manager.dart';
import 'package:flutter_task/design/presentation/resources/styles_manager.dart';
import 'package:flutter_task/design/presentation/screens/onboarding_view.dart';
import 'package:flutter_task/design/presentation/screens/service_view.dart';
import 'package:flutter_task/design/presentation/screens/sign_in_screen.dart';
import 'package:get/get.dart';

class SpalshScreen extends StatefulWidget {
   const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();

    new Future.delayed(new Duration(seconds:3), ()
    {

      Get.off(OnBoardingView());
      Get.put(HomeViewModel());
      Get.put(RequestViewModel());
      Get.put(AuthViewModel());

    });

  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: ColorManager.primary2,
       body:Column(
         crossAxisAlignment:CrossAxisAlignment.center,
         mainAxisAlignment:MainAxisAlignment.center,
         children: [

          Center(
            child: Container(
              height:120,
              width:100,
              child:Image.asset( ImageAssets.splashLogo),
            ),
          ),

           SizedBox(height:215,),

           InkWell(
             child: Text(AppStrings.splashText,style:getRegularStyle(
               color:Colors.white,
               fontSize:24,

             ),),
             onTap:(){
               Get.to(ServiceViewScreen());
             }
           )


         ],
       )
     );
   }
}
