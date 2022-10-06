import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/packages/pages/JOBS/components/custom_tab_jobs.dart';
import 'package:psut_portal/packages/pages/JOBS/components/filter_icon.dart';
import 'package:psut_portal/packages/pages/JOBS/components/filter_search_bar.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/tab_bar_controller.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:get/get.dart';

class CustomBottomJobSearch extends StatelessWidget {
  CustomBottomJobSearch({
    Key? key,
  }) : super(key: key);

  final TabBarController controller = Get.put(TabBarController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      controller.jobTitle.toString(),
                      style: CustomTheme.bigTitle,
                    ),
                  ),
                  SizedBox(height: 7.w),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FilterSearchBar(),
                      SizedBox(width: 20.w),
                      FilterIcon(),
                    ],
                  ),
                  SizedBox(height: 20.w),
                ],
              ),
            ),
            TabBar(
              controller: controller.tabBarcontroller,
              onTap: (value) {
                controller.tabBarcontroller.index = value;
              },
              padding: EdgeInsets.zero,
              indicatorColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: AppColors.white,
              unselectedLabelColor: AppColors.blue,
              indicator: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(13.r),
              ),
              tabs: const [
                CustomTabJobs(text: "All"),
                CustomTabJobs(text: "Saved Jobs"),
              ],
            ),
            const CustomSpacing()
          ],
        ),
      ),
    );
  }
}
