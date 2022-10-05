import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabBarcontroller;
  var jobTitle = "all jobs".toUpperCase().obs;

  void changeText() {
    if (tabBarcontroller.index == 0) {
      jobTitle.value = "All jobs".toUpperCase();
    } else {
      jobTitle.value = "Saved jobs".toUpperCase();
    }
  }

  @override
  void onInit() {
    tabBarcontroller = TabController(vsync: this, length: 2);
    super.onInit();
  }

  @override
  void onReady() {
    tabBarcontroller.addListener(() {
      changeText();
    });
    super.onReady();
  }

  @override
  void onClose() {
    tabBarcontroller.dispose();
    super.onClose();
  }
}
