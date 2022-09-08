


import 'package:flutter/material.dart';
import 'package:flutter_task/design/presentation/controller/home_view_model.dart';
import 'package:flutter_task/design/presentation/resources/color_manager.dart';
import 'package:flutter_task/design/presentation/resources/strings_manager.dart';
import 'package:flutter_task/design/presentation/widgets/categories_widget.dart';
import 'package:flutter_task/design/presentation/widgets/customdesign.dart';
import 'package:flutter_task/design/presentation/widgets/different_services.dart';
import 'package:flutter_task/design/presentation/widgets/search_bar.dart';

import 'package:get/get.dart';


class HomeScreen extends GetWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context) {

    return
      GetBuilder<HomeViewModel>(
          //init: Get.find(),// specify type as Controller
          init: HomeViewModel(), // intialize with the Controller
          builder: (value) =>
      Scaffold(
      backgroundColor:ColorManager.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:ColorManager.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor:Colors.black,
              icon: Icon(Icons.home,
                  color:Colors.amber
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor:Colors.black,
              icon: Icon(Icons.business, color:Colors.amber),
              label: AppStrings.myservices,

            ),
            BottomNavigationBarItem(
              backgroundColor:Colors.black,
              icon: Icon(Icons.shopping_cart_rounded,
                  color:Colors.amber),
              label: AppStrings.myrequest,
            ),
            BottomNavigationBarItem(
              backgroundColor:Colors.black,
              icon: Icon(Icons.person,
                  color:Colors.amber),
              label: AppStrings.profile,
            ),
          ],
          currentIndex:controller.selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: controller.changeIndex,
        ),
      body:ListView(
    children: [
      SearchBar(),

      SizedBox(
        height: 15,
      ),
      CategoriesWidget(),
      SizedBox(
        height: 30,
      ),
      CustomDesign(),
      SizedBox(
        height: 10,
      ),
      DifferentServices(),
    ],
    )
    ));
  }




}