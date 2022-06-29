import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/CSO/components/custom_tab.dart';
import 'package:psut_portal/themes/app_colors.dart';

class EventsBottomTabBar extends StatelessWidget {
  const EventsBottomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(1.w),
          child: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            indicatorPadding: EdgeInsets.zero,
            labelPadding: EdgeInsets.symmetric(horizontal: 3.w),
            isScrollable: true,
            unselectedLabelColor: AppColors.mainColor,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            tabs: [
              CustomTab(
                text: "All",
                width: 90.w,
              ),
              CustomTab(
                text: "Deanships",
                width: 90.w,
              ),
              CustomTab(
                text: "Clubs",
                width: 90.w,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
