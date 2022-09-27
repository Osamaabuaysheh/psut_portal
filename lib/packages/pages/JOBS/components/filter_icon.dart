import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/button/custom_button.dart';
import 'package:psut_portal/packages/components/button/custom_text_button.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class FilterIcon extends StatelessWidget {
  FilterIcon({
    Key? key,
  }) : super(key: key);

  final JobsController controller = Get.put(JobsController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 50.w,
        height: 42.w,
        decoration: BoxDecoration(
          color: Colors.grey.shade300.withOpacity(0.9),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  insetPadding: EdgeInsets.only(
                    top: 100.w,
                    left: 90.w,
                    right: 30.w,
                    bottom: 250.w,
                  ),
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SORT",
                            style: CustomTheme.mainTextStyle
                                ?.copyWith(fontSize: 16.sp),
                          ),
                          CustomTextButton(
                              onPressed: () {},
                              text: "Newest to Oldest".toUpperCase()),
                          CustomTextButton(
                              onPressed: () {
                                controller.sortListAlphabeticaly();
                                Get.back();
                              },
                              text: "A to Z"),
                          CustomTextButton(
                              onPressed: () {
                                controller.reverseSortList();
                                Get.back();
                              },
                              text: "Z to A"),
                          Text(
                            "Filter",
                            style: CustomTheme.mainTextStyle
                                ?.copyWith(fontSize: 16.sp),
                          ),
                          CustomTextButton(
                              onPressed: () {}, text: "College".toUpperCase()),
                          CustomTextButton(
                              onPressed: () {},
                              text: "Expiring Soon".toUpperCase()),
                          const Spacer(),
                          CustomButton(onPressed: () {}, textButton: "Apply"),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          icon: const Icon(Icons.filter),
        ),
      ),
    );
  }
}
