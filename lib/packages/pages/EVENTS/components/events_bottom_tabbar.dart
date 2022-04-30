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
            unselectedLabelColor: AppColors.mainColor,
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            tabs: const [
              CustomTab(text: "All"),
              CustomTab(text: "Deanship"),
              CustomTab(text: "Clubs"),
            ],
          ),
        ),
      ],
    );
  }
}
