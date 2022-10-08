import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/components/bottom_nav_bar.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/components/top_nav_bar.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/controller/bottom_nav_bar_state.dart';
import 'package:psut_portal/themes/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: displayWidth * .02,
        horizontal: displayWidth * .011,
      ),
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: GetBuilder<BottomNavBarController>(
        init: BottomNavBarController(),
        builder: (controller) => ListView.builder(
          itemCount: controller.listOfIcons.length,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              controller.setIndex(index);
              controller.setPage = index;
              HapticFeedback.lightImpact();
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                BottomNavBarIcon(displayWidth: displayWidth, index: index),
                TopNavBarIcon(displayWidth: displayWidth, index: index),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
