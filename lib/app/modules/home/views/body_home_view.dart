import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kitchen_manager/app/modules/home/controllers/home_controller.dart';

import '../../../app_controller.dart';

class BodyHomeView extends GetView<HomeController> {
  AppController appController = Get.find<AppController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: ListView(
          children: [
            Text(
              'Olá Octaniel,',
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xfff40a895),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'O que pretende fazer agora?${appController.page}',
              style: TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
