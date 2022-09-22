import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/packages/pages/JOBS/State/tab_bar_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/State/text_controller_job.dart';
import 'package:psut_portal/packages/pages/JOBS/components/custom_tab_jobs.dart';
import 'package:psut_portal/packages/pages/JOBS/components/filter_icon.dart';
import 'package:psut_portal/packages/pages/JOBS/components/filter_search_bar.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:get/get.dart';

class CustomBottomJobSearch extends StatelessWidget {
  CustomBottomJobSearch({
    Key? key,
  }) : super(key: key);

  var tabController = Get.put(TabBarController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GetX<TextJobController>(
        init: TextJobController(),
        builder: (controller) => Padding(
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
                    Text(
                      controller.jobTitle.toUpperCase(),
                      style: CustomTheme.bigTitle,
                    ),
                    SizedBox(height: 7.w),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const FilterSearchBar(),
                        SizedBox(width: 20.w),
                        const FilterIcon(),
                      ],
                    ),
                    SizedBox(height: 20.w),
                  ],
                ),
              ),
              TabBar(
                // controller: tabController.tabController,
                onTap: (value) {
                  tabController.tabController.index = value;

                  if (DefaultTabController.of(context)?.index == 0) {
                    controller.changeText("All Jobs");
                    debugPrint("${DefaultTabController.of(context)?.index}");
                  } else if (DefaultTabController.of(context)?.index == 1) {
                    controller.changeText("Saved Jobs");
                  }
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
      ),
    );
  }
}
