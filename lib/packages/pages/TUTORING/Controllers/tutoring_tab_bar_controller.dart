import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TutoringTabBarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabBarcontroller;

  @override
  void onInit() {
    tabBarcontroller = TabController(vsync: this, length: 4);
    super.onInit();
  }

  @override
  void onClose() {
    tabBarcontroller.dispose();
    super.onClose();
  }
}
