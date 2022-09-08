


import 'package:flutter/material.dart';
import 'package:flutter_task/design/presentation/controller/auth_view_model.dart';
import 'package:flutter_task/design/presentation/resources/color_manager.dart';
import 'package:flutter_task/design/presentation/resources/strings_manager.dart';
import 'package:flutter_task/design/presentation/resources/styles_manager.dart';
import 'package:flutter_task/design/presentation/screens/sign_in_screen.dart';
import 'package:flutter_task/design/presentation/widgets/custom_text.dart';

import 'package:get/get.dart';

class ForgotPasswordScreen extends GetWidget<AuthViewModel>{
  @override
  Widget build(BuildContext context) {

     return Scaffold(

       body:GetBuilder<AuthViewModel>(
         init: AuthViewModel(),
         builder: (value) =>
          Column(
           children: [
             SizedBox(
               height:50,
             ),
             Padding(
               padding: const EdgeInsets.only(left:32.0),
               child: Row(
                 children: [
                   InkWell(
                     child: Container(
                       width:40,
                       height:40,
                       child: Card(
                         color:ColorManager.white,
                           child: Icon(Icons.arrow_back_ios_rounded)),
                     ),
                     onTap:(){
                       Get.offAll(SignInScreen());
                     },
                   ),
                   SizedBox(width:40,),
                   Custom_Text(text: AppStrings.forgetPassword2,
                     color:ColorManager.black,
                     fontSize:20,


                   )

                 ],
               ),
             ),
            SizedBox(height:45,),
            Row(
     children: <Widget>[

         Row(
           children: [

             Radio(
               value: EmailOrPhone.googleAccount, groupValue: controller.choice,
                 onChanged: (EmailOrPhone? value) {
                    controller.emailOrphone(value);
                    },),
             SizedBox(width:3,),
             Custom_Text(text: AppStrings.googleAccount,fontSize:15),
           ],
         ),

         SizedBox(width:30,),
         Row(
           children: [
             Radio(
               value: EmailOrPhone.phoneNumber, groupValue: controller.choice,
               onChanged: (EmailOrPhone? value) {
                 controller.emailOrphone(value);
               },),
             SizedBox(width:3,),
             Custom_Text(text: AppStrings.phoneNumber,fontSize:15),
           ],
         ),
         ]),
             SizedBox(height:55,),

             if(controller.valx == 1)
             Padding(
               padding: const EdgeInsets.only(left:24,right:24),
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
                 ],
               ),
             ),

             if(controller.valx ==0)
               Padding(
                 padding: const EdgeInsets.only(left:24,right:24),
                 child: Column(
                   children: [
                     Custom_Text(text: AppStrings.email,
                       color:ColorManager.black,fontSize:17,
                     ),
                     TextFormField(
                       enableSuggestions: false,
                       autocorrect: false,
                       decoration: InputDecoration(
                         suffixIcon: IconButton(
                           icon: Icon(

                             Icons.email,

                           ),
                           onPressed: () {

                           //  controller.passwordVisibility();
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
                   ],
                 ),
               ),




             SizedBox(height:90,),

             Container(
               width:312,
               height:46,
               child: RaisedButton(
                 elevation: 10,
                 onPressed: (){

                 },
                 color:ColorManager.primary2,
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30)),
                 child: Padding(
                   padding: EdgeInsets.all(10),
                   child: Text(
                        AppStrings.send,
                       style: getRegularStyle(color:ColorManager.white,fontSize:20)
                   ),
                 ),
               ),
             )

           ],
         ),
       ),
     );
  }
 }
 enum EmailOrPhone { googleAccount, phoneNumber }