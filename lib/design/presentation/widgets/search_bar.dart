
import 'package:flutter/material.dart';
import 'package:flutter_task/design/presentation/resources/assets_manager.dart';
import 'package:flutter_task/design/presentation/resources/color_manager.dart';

class SearchBar extends StatelessWidget {
   const SearchBar({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return
       Column(
       children: [
         SizedBox(
           height:17,
         ),
         Container(
           color:Colors.white10,
           child: Padding(
             padding: const EdgeInsets.only(left:65,right:65),
             child: Card(
               child: Container(
                 color:ColorManager.white,
                 width:260,
                 child:TextFormField(
                   enableSuggestions: false,
                   autocorrect: false,
                   decoration: InputDecoration(

                       suffixIcon: IconButton(
                         icon:Image.asset(ImageAssets.vector1),
                         onPressed: () {

                         },
                       ),

                       icon:Icon(Icons.search)
                   ),
                   validator: (value) {
                     if (value!.isNotEmpty) return null;
                     return '';
                     // AppLocalizations.of(context)!
                     // .enterPassword;
                   },
                 ),
               ),
             ),
           ),
         ),

       ],
     );
   }
 }
