import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/components/button/custom_button.dart';
import 'package:psut_portal/packages/components/para_space.dart';
import 'package:psut_portal/packages/pages/TUTORING/book_tutor.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:psut_portal/utils/path_image.dart';
import 'package:intl/intl.dart';

class TutorProfile extends StatelessWidget {
  static const String id = '/TutorProfile';

  const TutorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const PopIconButton(
          color: Colors.white,
          size: 25,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 240.h,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 152.h,
                    color: AppColors.blue,
                  ),
                  Positioned(
                    top: 80.h,
                    left: 100.w,
                    child: Container(
                      width: 160.w,
                      height: 160.h,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: AppColors.grey,
                          radius: 7,
                          backgroundImage: const AssetImage(PathImage.tutor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const ParaSpacing(),
                Text(
                  "${arguments['CourseTitle']} ",
                  style: CustomTheme.bigTitle,
                ),
              ],
            ),

            const ParaSpacing(),
            //*Details (course)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Tutor Name ',
                        style: CustomTheme.bigTitle?.copyWith(fontSize: 21.sp),
                      ),
                      Text("  ${arguments['courseTutor']}",
                          style: CustomTheme.normalBlue
                              ?.copyWith(fontSize: 18.sp)),
                    ],
                  ),
                  const ParaSpacing(),
                  Row(
                    children: [
                      Text(
                        'Course Number ',
                        style: CustomTheme.bigTitle?.copyWith(fontSize: 19.sp),
                      ),
                      SizedBox(width: 20.w),
                      SizedBox(
                        width: 145.w,
                        child: Text(
                          "${arguments['courseNum']}",
                          maxLines: 3,
                          style:
                              CustomTheme.normalBlue?.copyWith(fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                  const ParaSpacing(),
                  Text(
                    'Tutor Availability ',
                    style: CustomTheme.bigTitle?.copyWith(fontSize: 21.sp),
                  ),
                  SizedBox(height: 10.h),
                  arguments['Sessions'].isNotEmpty
                      ? Column(
                          children: [
                            ...arguments['Sessions']
                                .map(
                                  (session) => Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.h),
                                    child: Text(
                                      "${session.day}              ${DateFormat('jm').format(DateTime.parse("2022-12-12 " + session.startTime!))} - ${DateFormat('jm').format(DateTime.parse("2022-12-12 " + session.endTime!))}",
                                      style: CustomTheme.normalBlue
                                          ?.copyWith(fontSize: 17.sp),
                                    ),
                                  ),
                                )
                                .toList(),
                          ],
                        )
                      : Align(
                          alignment: Alignment.center,
                          child: Text(
                            "No Sessions Available Right Now",
                            style: CustomTheme.normalBlue?.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {
                Get.bottomSheet(
                  SizedBox(
                      height: 415.h,
                      child: BookTutor(sessions: arguments['Sessions'])),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(43.r),
                    ),
                  ),
                );
              },
              textButton: "Book a Session",
              width: 30,
            ),
            const ParaSpacing(),
          ],
        ),
      ),
    );
  }
}
