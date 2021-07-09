import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitchen_manager/app/app_controller.dart';
import 'package:kitchen_manager/app/modules/home/views/body_home_view.dart';
import 'package:kitchen_manager/app/modules/home/views/list_product_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // AppController appController = Get.find<AppController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appController) {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              'Kichen Manager',
              style: TextStyle(color: Colors.black87, fontSize: 22),
            ),
            centerTitle: true,
            actions: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Icon(
                  Icons.notifications_active_outlined,
                  size: 28,
                ),
              ),
            ],
          ),
          body: body(appController),
          bottomNavigationBar: Container(
            height: 70,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: CurvedNavigationBar(
              key: appController.bottomNavBar,
              index: appController.page,
              height: 50,
              color: Colors.white,
              backgroundColor: Color(0xfff40a895),
              buttonBackgroundColor: Colors.white,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 400),
              onTap: (index) {
                appController.page = index;
              },
              items: [
                Icon(
                  Icons.view_headline_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.location_city_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.home,
                  size: 30,
                ),
                Icon(
                  Icons.wysiwyg_sharp,
                  size: 30,
                ),
                Icon(
                  Icons.watch_later,
                  size: 30,
                ),
              ],
            ),
          ));
    });
  }

  Widget body(AppController appController) {
    if (appController.page == 2) {
      return BodyHomeView();
    } else {
      return ListProductView();
    }
  }
}
