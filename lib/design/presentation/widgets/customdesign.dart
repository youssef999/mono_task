

import 'package:flutter/material.dart';
import 'package:flutter_task/design/presentation/resources/assets_manager.dart';
import 'package:flutter_task/design/presentation/resources/color_manager.dart';
import 'package:flutter_task/design/presentation/resources/strings_manager.dart';
import 'package:flutter_task/design/presentation/widgets/custom_text.dart';


class CustomDesign extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return

      Padding(
        padding: const EdgeInsets.only(left:28,right:28),
        child: Column(
          children: [
            Row(
              children: [
              Custom_Text(text: AppStrings.offers,color:ColorManager.black,
                  fontSize: 16,
                  ),

                SizedBox(width:135,),

                Custom_Text(text: AppStrings.seeAll,color:ColorManager.darkGrey,
                  fontSize: 10,
                ),

              ],
            ),
            SizedBox(height:5,),
            SizedBox(
              height: 166.0,
              width: 300.0,
              child:Image.asset(ImageAssets.design1)
            ),

            SizedBox(height:18,),
            Row(
              children: [
                Custom_Text(text:'Design of a childrens room for 2 children',
                fontSize:12,
                ),
                SizedBox(width: 30,),
                Custom_Text(text:'256 EG',
                  fontSize:16,
                  color:ColorManager.primary2,
                ),
              ],
            ),
            SizedBox(height:10,),
            Column(
              children: [
                Custom_Text(text:AppStrings.interiordesign,fontSize:10,),
                SizedBox(height:14,),
                Row(
                  children: [
                    Image.asset(ImageAssets.designerImage),
                    SizedBox(width:4,),
                    Custom_Text(text: 'Designer / Ibrahim',fontSize:12,color:ColorManager.black,),
                    SizedBox(width:100,),
                    Container(
                      width:70,
                      height:32,
                      child: RaisedButton(

                          color:ColorManager.primary2,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)),
                          onPressed:(){

                      },
                      child:Custom_Text(text:AppStrings.book,color:ColorManager.white,fontSize:12,
                      alignment:Alignment.center,
                      ),
                      ),
                    )
                  ],
                )
              ],
            ),

          ],
        ),
      );
  }



}