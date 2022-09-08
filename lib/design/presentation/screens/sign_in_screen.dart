


import 'package:flutter/material.dart';
import 'package:flutter_task/design/presentation/controller/auth_view_model.dart';
import 'package:flutter_task/design/presentation/resources/assets_manager.dart';
import 'package:flutter_task/design/presentation/resources/color_manager.dart';
import 'package:flutter_task/design/presentation/resources/strings_manager.dart';
import 'package:flutter_task/design/presentation/resources/styles_manager.dart';
import 'package:flutter_task/design/presentation/widgets/custom_text.dart';
import 'package:get/get.dart';

import 'forget_password_screen.dart';
import 'home.dart';


 class SignInScreen extends GetWidget<AuthViewModel> {




  @override
  Widget build(BuildContext context) {
    return

      GetBuilder<AuthViewModel>(
          init: AuthViewModel(),
          builder: (value) =>
              Scaffold(
        body:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:150,top:45),
                child: Center(
                  child: Custom_Text(text: AppStrings.signIn,color:ColorManager.black,fontSize:22,
                  ),
                ),
              ),
              SizedBox(height:10,),
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: Custom_Text(text: AppStrings.welcomeBack,color:ColorManager.primary2,fontSize:17,
                ),
              ),
              SizedBox(height:26,),
              Container(
                width:320,
                child: Column(
                  children: [
                    Custom_Text(text: AppStrings.phoneNumber,color:ColorManager.black,fontSize:17,
                    ),
                    TextFormField(
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        // labelText: AppLocalizations.of(context)!
                        //     .password,
                        suffixIcon: IconButton(
                          icon: Icon(

                            Icons.phone_enabled_outlined,

                          ),
                          onPressed: () {

                            controller.passwordVisibility();
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty) return null;
                        return '';
                        // AppLocalizations.of(context)!
                        // .enterPassword;
                      },
                    ),

                    SizedBox(height:20,),

                    Custom_Text(text: AppStrings.password,color:ColorManager.black,fontSize:17,
                    ),

                    TextFormField(
                      obscureText:  controller.obscureText,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          // labelText: AppLocalizations.of(context)!
                          //     .password,
                          suffixIcon: IconButton(
                            icon: Icon(
                           controller.obscureText ?
                              Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {

                           controller.passwordVisibility();
                            },
                          ),
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty) return null;
                        return '';
                         // AppLocalizations.of(context)!
                           // .enterPassword;
                      },
                    ),

                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left:190,top:9),
                        child: Text(AppStrings.forgetPassword1,style:getRegularStyle(
                            color:ColorManager.black),),
                      ),
                      onTap:(){
                        Get.to(ForgotPasswordScreen());
                      },
                    ),

                    SizedBox(
                      height:60,
                    ),



                    SizedBox(height:20,),

                    Padding(
                      padding: const EdgeInsets.only(left:90),
                      child: Custom_Text(
                        text: AppStrings.orBySocialMedia,fontSize:16,
                        color:ColorManager.black
                        ,),
                    ),

                    SizedBox(height:20,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Container(
                          width:40,
                          height:39,
                          child: Card(
                            child:Image.asset(ImageAssets.googleIcon),
                          ),
                        ),
                        SizedBox(width:10,),
                        Container(
                          width:40,
                          height:39,
                          child: Card(
                            child:Image.asset(ImageAssets.facebookIcon),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height:15,),
                    Padding(
                      padding: const EdgeInsets.only(left:40.0),
                      child: Row(
                        children: [
                          Custom_Text(text:AppStrings.haveNoAccount,
                          color:ColorManager.black,
                            fontSize:14,
                          ),
                          SizedBox(width:16,),
                          Custom_Text(text:AppStrings.createNewAccount,
                            color:ColorManager.primary2,
                            fontSize:14,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:14,),


                  Container(
                    width:312,
                    height:46,
                    child: RaisedButton(
                      elevation: 10,
                      onPressed: (){
                        Get.to(HomeScreen());
                      },
                      color: ColorManager.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                            AppStrings.enterAsGuest,
                            style: getRegularStyle(color:ColorManager.primary2,fontSize:20)
                        ),
                      ),
                    ),
                  )



                  ],
                ),
              ),

            ],
          ),
        ));
  }
}