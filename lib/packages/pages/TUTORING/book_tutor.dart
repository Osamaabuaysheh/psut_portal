import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/button/custom_button.dart';
import 'package:psut_portal/packages/components/para_space.dart';
import 'package:psut_portal/packages/pages/TUTORING/Controllers/courses_controller.dart';
import 'package:psut_portal/packages/pages/TUTORING/Controllers/session_controller.dart';
import 'package:psut_portal/packages/pages/TUTORING/Models/session.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:intl/intl.dart';

class BookTutor extends StatelessWidget {
  BookTutor({
    Key? key,
    required List<Sessions> sessions,
  })  : _sessions = sessions,
        super(key: key);

  final List<Sessions> _sessions;

  final controller = Get.put(SessionController());
  final CourseController courseController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 300,
      padding: EdgeInsets.symmetric(vertical: 30.r, horizontal: 30.r),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please select a session',
              style: CustomTheme.bigTitle?.copyWith(fontSize: 23),
            ),
            Text(
              "Note that if a session cannot take place if it has less than 5 students",
              style: CustomTheme.normalBlue?.copyWith(
                fontSize: 18,
                overflow: TextOverflow.clip,
              ),
            ),
            const ParaSpacing(),
            SizedBox(
              height: 200.h,
              child: _sessions.isNotEmpty
                  ? GetX<SessionController>(
                      builder: (controller) => Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        runSpacing: 10.w,
                        spacing: 5.w,
                        children: List<RawChip>.generate(
                          _sessions.length,
                          (index) => RawChip(
                            onSelected: (value) =>
                                controller.setIndex = value ? index : -1,
                            selectedColor: AppColors.mainColor,
                            backgroundColor: AppColors.white,
                            showCheckmark: false,
                            labelPadding: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            selected: index == controller.indexedStackSelected,
                            label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              height: 40.h,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.mainColor),
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 100.w,
                                    child: Text(
                                      _sessions[index].day.toString(),
                                      style: CustomTheme.normalBlue?.copyWith(
                                          fontSize: 15.sp,
                                          color: controller.index.value == index
                                              ? AppColors.white
                                              : AppColors.mainColor),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120.w,
                                    child: Text(
                                      "${DateFormat('j').format(DateTime.parse("2022-12-12 " + _sessions[index].startTime.toString()))} - ${DateFormat('j').format(DateTime.parse("2022-12-12 " + _sessions[index].endTime.toString()))}",
                                      style: CustomTheme.normalBlue?.copyWith(
                                          fontSize: 13.sp,
                                          color: controller.index.value == index
                                              ? AppColors.white
                                              : AppColors.mainColor),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 45.w,
                                    child: Row(
                                      children: [
                                        Text(
                                          _sessions[index].total.toString(),
                                          style:
                                              CustomTheme.normalBlue?.copyWith(
                                            fontSize: 13.sp,
                                            color:
                                                controller.index.value == index
                                                    ? AppColors.white
                                                    : AppColors.mainColor,
                                          ),
                                        ),
                                        Icon(
                                          Icons.person,
                                          color: controller.index.value == index
                                              ? AppColors.white
                                              : AppColors.mainColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Center(
                      child: Text(
                        "No Sessions Right Now",
                        style: CustomTheme.mainTextStyle?.copyWith(
                            fontSize: 16.sp, color: AppColors.mainColor),
                      ),
                    ),
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {
                controller.incrementSession(
                    _sessions[controller.index.value].sessionId ?? -1);
              },
              textButton: "Book a Session",
            ),
          ],
        ),
      ),
    );
  }
}
