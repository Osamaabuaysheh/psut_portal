import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/controller/bottom_nav_bar_state.dart';
import 'package:psut_portal/themes/app_colors.dart';

class TopNavBarIcon extends StatelessWidget {
  TopNavBarIcon({
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
          ? displayWidth * .22.w
          : displayWidth * .17,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Row(
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                width:
                    _index == controller.currentIndex ? displayWidth * .11 : 0,
              ),
              AnimatedOpacity(
                opacity: _index == controller.currentIndex ? 1 : 0,
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                child: Text(
                  _index == controller.currentIndex
                      ? controller.listOfStrings[_index]
                      : '',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                width: _index == controller.currentIndex
                    ? displayWidth * .023
                    : 15.w,
              ),
              Icon(
                controller.listOfIcons[_index],
                size: displayWidth * 0.065,
                color: _index == controller.currentIndex
                    ? AppColors.white
                    : AppColors.textGrey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
