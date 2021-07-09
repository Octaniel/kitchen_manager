import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget iconPersonalizadoBottomNavigationBar(IconData? icon, String url) {
  bool foco = false;
  if (url == 'home') foco = true;
  return Container(
    height: 50,
    width: 50,
    decoration: url == 'home'
        ? BoxDecoration(
            color: Color(0xfff40a895).withOpacity(.5),
            borderRadius: BorderRadius.all(
              Radius.circular(200),
            ),
          )
        : BoxDecoration(),
    margin: EdgeInsets.symmetric(
      horizontal: Get.height * .02 + 5,
      vertical: 0,
    ),
    child: Icon(
      icon,
      size: 40,
    ),
  );
}
