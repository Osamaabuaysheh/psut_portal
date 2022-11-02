import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/controller/bottom_nav_bar_state.dart';

class MainHomePage extends StatelessWidget {
  static const String id = '/MainHomePage';
  MainHomePage({Key? key}) : super(key: key);

  final BottomNavBarController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: controller.currentScreen,
      ),
    );
  }
}
