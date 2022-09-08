
import 'package:flutter/material.dart';
import 'package:flutter_task/design/presentation/resources/assets_manager.dart';
import 'package:flutter_task/design/presentation/resources/color_manager.dart';
import 'package:flutter_task/design/presentation/resources/strings_manager.dart';
import 'package:flutter_task/design/presentation/widgets/custom_text.dart';


class CategoriesWidget extends StatelessWidget {
   const CategoriesWidget({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {


     return Padding(
       padding: const EdgeInsets.only(left:28.0,right:28),
       child: Column(
         children: [
           Row(
             children: [
               Custom_Text(text:AppStrings.categories,fontSize:16 ,color:ColorManager.black,),

               SizedBox(width:170,),

               Custom_Text(text:AppStrings.seeAll,fontSize:10 ,color:ColorManager.darkGrey,),

             ],

           ),

           SizedBox(height:20,),
           Row(
             children: [
               SizedBox(width:17,),

               Column(
                   children: [
                     Container(
                         width:46,
                         height: 46,
                         child: Image.asset(ImageAssets.tree)),
                     SizedBox(
                       height:10,
                     ),
                     Custom_Text(text:AppStrings.gardens,fontSize:14,
                     color:ColorManager.black,
                     )

                   ],
                 ),
               SizedBox(width:17,),

               Column(
                 children: [
                   Container(
                       width:46,
                       height: 46,
                       child: Image.asset(ImageAssets.electricity)),
                   SizedBox(
                     height:10,
                   ),
                   Custom_Text(text:AppStrings.electricity,fontSize:14,
                     color:ColorManager.black,
                   )

                 ],
               ),
               SizedBox(width:17,),

               Column(
                 children: [
                   Container(
                       width:46,
                       height: 46,
                       child: Image.asset(ImageAssets.cleaning)),
                   SizedBox(
                     height:10,
                   ),
                   Custom_Text(text:AppStrings.cleaning,fontSize:14,
                     color:ColorManager.black,
                   )

                 ],
               ),
               SizedBox(width:17,),

               Column(
                 children: [
                   Container(
                       width:46,
                       height: 46,
                       child: Image.asset(ImageAssets.plunger)),
                   SizedBox(
                     height:13,
                   ),
                   Custom_Text(text:AppStrings.plumbing,fontSize:14,
                     color:ColorManager.black,
                   )

                 ],
               ),
             ],
           )


         ],
       ),
     );
   }
 }
