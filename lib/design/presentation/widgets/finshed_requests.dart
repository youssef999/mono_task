
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_task/core/utils/dummy.dart';
import 'package:flutter_task/design/presentation/controller/home_view_model.dart';
import 'package:flutter_task/design/presentation/resources/color_manager.dart';
import 'package:flutter_task/design/presentation/resources/strings_manager.dart';
import 'package:flutter_task/design/presentation/screens/service_view.dart';
import 'package:get/get.dart';
import 'custom_text.dart';

class FinshedRequests extends StatelessWidget {
  const FinshedRequests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeViewModel>( // specify type as Controller
        init: HomeViewModel(), // intialize with the Controller
        builder: (value) =>
            Padding(
              padding: const EdgeInsets.only(left:28,right:21),
              child: Column(
                children: [

                  SizedBox(height: 5),
                  ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    // padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemCount:  designList .length,
                    itemBuilder: (context, index) {
                      final design =  designList [index];
                      return InkWell(
                        onTap: () {
                          Get.to(ServiceViewScreen());
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Container(
                                      width:120,
                                      height:78,
                                      child: Image.asset(designList[index].image,fit:BoxFit.fill,)),
                                ),

                                SizedBox(width:8,),
                                Container(
                                  width:111,
                                  height: 44,
                                  child: Custom_Text(text:designList[index].title,
                                    fontSize:10,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Custom_Text(text:designList[index].price.toString(),
                                      color:ColorManager.primary2,fontSize:20,

                                    ),
                                    SizedBox(height:7,),
                                    RatingBar(
                                      ignoreGestures: true,
                                      initialRating: designList[index].vote,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 12,
                                      maxRating: 5,
                                      ratingWidget: RatingWidget(
                                        full: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        half: Icon(
                                          Icons.star_half_outlined,
                                          color: Colors.yellow,
                                        ),
                                        empty: Icon(
                                          Icons.star_border,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    Container(
                                      width:70,
                                      height:32,
                                      child: RaisedButton(

                                        color:ColorManager.green,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)),
                                        onPressed:(){

                                        },
                                        child:Custom_Text(text:AppStrings.finshed,
                                          color:ColorManager.white,fontSize:10,
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
                    },
                  ),

                ],
              ),
            ));
  }
}
