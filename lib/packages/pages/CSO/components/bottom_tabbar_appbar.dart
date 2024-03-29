import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/CSO/components/custom_tab.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/student_details_controller.dart';
import 'package:psut_portal/packages/pages/Cards/Models/student.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CSOBottomTabBar extends StatelessWidget {
  const CSOBottomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Align(
          widthFactor: 2.w,
          child: FutureBuilder<Student?>(
            future: StudentDetailsContoller.getDetails(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  "Hours Completed: ${snapshot.data?.hoursCompleted ?? "fwfw"}",
                  style: CustomTheme.mainTextStyle,
                );
              } else {
                return const Text("No Hours");
              }
            },
          ),
          alignment: Alignment.centerLeft,
        ),
        const SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(3.w),
          child: TabBar(
            unselectedLabelColor: AppColors.mainColor,
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            tabs: const [
              CustomTab(text: "Upcoming", width: 150),
              CustomTab(text: "Previous", width: 150),
            ],
          ),
        ),
      ],
    );
  }
}
