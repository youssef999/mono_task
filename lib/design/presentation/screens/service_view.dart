

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_task/design/presentation/controller/auth_view_model.dart';
import 'package:flutter_task/design/presentation/controller/home_view_model.dart';
import 'package:flutter_task/design/presentation/controller/request_view_model.dart';
import 'package:flutter_task/design/presentation/resources/assets_manager.dart';
import 'package:flutter_task/design/presentation/resources/color_manager.dart';
import 'package:flutter_task/design/presentation/resources/strings_manager.dart';
import 'package:flutter_task/design/presentation/screens/home.dart';
import 'package:flutter_task/design/presentation/widgets/custom_text.dart';
import 'package:flutter_task/design/presentation/widgets/finshed_requests.dart';
import 'package:flutter_task/design/presentation/widgets/waiting_requests.dart';
import 'package:flutter_task/design/presentation/widgets/working_requests.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';



class ServiceViewScreen extends GetWidget<RequestViewModel> {
  @override
  Widget build(BuildContext context) {

     return

       GetBuilder<RequestViewModel>(
         init: RequestViewModel(),
    builder: (value) =>Scaffold(
      backgroundColor:ColorManager.white,
      body:ListView(
        children: [
          SizedBox(height:60,),
          Row(
            children: [
              SizedBox(width:20,),
              InkWell(
                child: Container(
                  width:40,
                  height:40,
                  child: Card(
                      color:ColorManager.white,
                      child: Icon(Icons.arrow_back_ios_rounded)),
                ),
                onTap:(){
                  Get.offAll(HomeScreen());
                  Get.put(HomeViewModel());
                  Get.put(RequestViewModel());
                  Get.put(AuthViewModel());
                },
              ),
              SizedBox(width:70,),
              Center(
                child:Custom_Text(text:AppStrings.myservices,fontSize:22,color:ColorManager.black),
              ),
              SizedBox(width:70,),
              Image.asset(ImageAssets.br)
            ],
          ),




        //   SizedBox(
        //     height:30,
        //   ),
        //   Row(
        //     children: [
        //       SizedBox(width:24,),
        //       Image.asset(ImageAssets.bill),
        // Column(
        //   children: [
        //     Container(
        //       color:Colors.white10,
        //       child: Padding(
        //         padding: const EdgeInsets.only(left:15,right:15),
        //         child: Card(
        //           child: Container(
        //             color:ColorManager.white,
        //             width:220,
        //             child:TextFormField(
        //               enableSuggestions: false,
        //               autocorrect: false,
        //               decoration: InputDecoration(
        //
        //                   suffixIcon: IconButton(
        //                     icon:Image.asset(ImageAssets.vector1),
        //                     onPressed: () {
        //
        //                     },
        //                   ),
        //
        //                   icon:Icon(Icons.search)
        //               ),
        //               validator: (value) {
        //                 if (value!.isNotEmpty) return null;
        //                 return '';
        //                 // AppLocalizations.of(context)!
        //                 // .enterPassword;
        //               },
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //
        //   ],
        // ),
        //       Image.asset(ImageAssets.msg)
        //     ],
        //   ),

          SizedBox(height:21,),

          Container(
            child: ToggleSwitch(
              initialLabelIndex:controller.activeToggledIndex,
              totalSwitches: 3,
              inactiveBgColor: ColorManager.white,
              minWidth: 145.0,
              minHeight: 40.0,
              activeFgColor: ColorManager.primary2,
              inactiveFgColor: Colors.black,
              activeBgColor: [Colors.white10],
              fontSize: 14.0,
              labels: [

                 AppStrings.waiting,
                 AppStrings.working,
                AppStrings.finshed
              ],
              onToggle: (index) {

                controller.changeToogleIndex(index!);

                // _activeToggledIndex =
                // _activeToggledIndex == 0 ? 1 : 0;
                // _toggleFormType();
              },
            ),
          ),


      if(controller.activeToggledIndex == 0)
        WaitingRequests(),

          if(controller.activeToggledIndex == 1)
            WorkingRequests(),

          if(controller.activeToggledIndex == 2)
            FinshedRequests(),


           SizedBox(height:20,),

        ],
      ),

     ));
  }




}