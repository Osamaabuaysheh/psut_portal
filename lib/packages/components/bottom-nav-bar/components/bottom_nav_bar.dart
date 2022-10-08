import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/controller/bottom_nav_bar_state.dart';

class BottomNavBarIcon extends StatelessWidget {
  BottomNavBarIcon({
    Key? key,
    required this.displayWidth,
    required index,
  })  : _index = index,
        super(key: key);

  final double displayWidth;
  final BottomNavBarController controller = Get.find();
  final int _index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.fastLinearToSlowEaseIn,
      width: _index == controller.currentIndex
          ? displayWidth * .225.w
          : displayWidth * .18,
      alignment: Alignment.center,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn,
        height: _index == controller.currentIndex ? displayWidth * .12 : 0,
        width: _index == controller.currentIndex ? displayWidth * .24 : 0,
        decoration: BoxDecoration(
          color: _index == controller.currentIndex
              ? Colors.blueAccent.withOpacity(.2)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}


//width: _index == controller.currentIndex
          // ? displayWidth * .225.w
          // : displayWidth * .18,



          // width: _index == controller.currentIndex ? displayWidth * .239 : 0,