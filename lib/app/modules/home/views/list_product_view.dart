import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kitchen_manager/app/modules/home/controllers/home_controller.dart';

class ListProductView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Wrap(
          children: [
            Icon(
              Icons.fastfood_sharp,
              size: 50,
            ),
            Icon(
              Icons.fastfood,
              size: 50,
            ),
            Icon(
              Icons.height,
              size: 50,
            ),
            Icon(
              Icons.watch_later,
              size: 50,
            ),
            Icon(
              Icons.wysiwyg_sharp,
              size: 50,
            ),
            Icon(
              Icons.update,
              size: 50,
            ),
            Icon(
              Icons.ac_unit_outlined,
              size: 50,
            ),
            Icon(
              Icons.access_alarm_sharp,
              size: 50,
            ),
            Icon(
              Icons.access_time,
              size: 50,
            ),
            Icon(
              Icons.zoom_in,
              size: 50,
            ),
            Icon(
              Icons.work_off_rounded,
              size: 50,
            ),
          ],
        )
      ],
    );
  }
}
