

import 'package:flutter/material.dart';
import 'package:flutter_task/design/presentation/resources/assets_manager.dart';
import 'package:flutter_task/design/presentation/resources/color_manager.dart';
import 'package:flutter_task/design/presentation/resources/strings_manager.dart';
import 'package:flutter_task/design/presentation/resources/styles_manager.dart';
import 'package:flutter_task/design/presentation/screens/sign_in_screen.dart';
import 'package:flutter_task/design/presentation/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
   const OnBoardingView({Key? key}) : super(key: key);



   @override
   State<OnBoardingView> createState() => _OnBoardingViewState();
 }

 class _OnBoardingViewState extends State<OnBoardingView> {
   final controller= PageController();

   @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
        body:Container(
          padding: EdgeInsets.only(bottom:50),
          child: PageView(
            controller:controller,
            children: [
              Container(
                color:ColorManager.white,
                child:Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height:120,
                      ),
                      Image.asset(ImageAssets.onboardingLogo1),
                      SizedBox(
                        height:10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:80.0),
                        child: Custom_Text(
                          text:AppStrings.onBoardingText1,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(
                        height:10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:1.0),
                        child: Container(
                          width:210,
                          height:38,
                          child: Custom_Text(
                            text:AppStrings.onBoardingText2,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height:40,
                      ),
                      SmoothPageIndicator(
                        controller:controller,
                        count: 2,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color:ColorManager.white,
                child:Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height:120,
                      ),
                      Image.asset(ImageAssets.onboardingLogo2),
                      SizedBox(
                        height:10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:80.0),
                        child: Custom_Text(
                          text:AppStrings.onBoardingText3,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(
                        height:10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:1.0),
                        child: Container(
                          width:210,
                          height:38,
                          child: Custom_Text(
                            text:AppStrings.onBoardingText4,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height:40,
                      ),
                      SmoothPageIndicator(
                        controller:controller,
                        count: 2,
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),


        ),
       bottomSheet:
       Container(
           width:312,
           height:60,
          padding:EdgeInsets.only(left:50,bottom:12),
           child: RaisedButton(
             elevation: 10,
             onPressed: (){

               if(controller.page ==0){
                 print("LLl");

               }
               if(controller.page ==1){
                 Get.off(SignInScreen());
               }


             },
             color:ColorManager.primary2,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(25)),
             child: Padding(
               padding: EdgeInsets.all(10),
               child: Text(
                   AppStrings.continue2,
                   style: getRegularStyle(color:ColorManager.white,fontSize:20)
               ),
             ),

         )
       )
     );
   }
 }
