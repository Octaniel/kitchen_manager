import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AppController extends GetxController {
  final _page = 2.obs;
  GlobalKey bottomNavBar = GlobalKey();

  get page => _page.value;

  set page(value) {
    _page.value = value;
    update();
  }
}
