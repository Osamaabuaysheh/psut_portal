import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/components/button/custom_button.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/packages/components/para_space.dart';
import 'package:psut_portal/packages/pages/TUTORING/book_tutor.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:psut_portal/utils/path_image.dart';

class TutorProfile extends StatelessWidget {
  const TutorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              //color: Colors.purple,
              width: double.infinity,
              height: 240.h,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 280.h,
                    color: AppColors.white,
                  ),
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
            SizedBox(
              //color: Colors.red,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //* Name , year and gpa
                  Column(
                    children: [
                      const ParaSpacing(),
                      Text(
                        'Yara Al Sadeeq',
                        style: CustomTheme.bigTitle,
                      ),
                      const CustomSpacing(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 100.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Year 4',
                              style: CustomTheme.normalBlue?.copyWith(
                                fontSize: 18.sp,
                              ),
                            ),
                            Text(
                              '93.4 GPA',
                              style: CustomTheme.normalBlue
                                  ?.copyWith(fontSize: 18.sp),
                            ),
                          ],
                        ),
                      ),
                      const ParaSpacing(),
                    ],
                  ),
                  //*Details (course)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Course Name',
                              style: CustomTheme.bigTitle
                                  ?.copyWith(fontSize: 21.sp),
                            ),
                            SizedBox(
                              width: 50.w,
                            ),
                            SizedBox(
                              width: 130.w,
                              child: Text(
                                '20141 Physics 1',
                                maxLines: 3,
                                style: CustomTheme.normalBlue
                                    ?.copyWith(fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                        const ParaSpacing(),
                        Text(
                          'Tutor Availability ',
                          style:
                              CustomTheme.bigTitle?.copyWith(fontSize: 21.sp),
                        ),
                        const CustomSpacing(),
                        Table(
                          children: [
                            TableRow(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sunday',
                                      style: CustomTheme.normalBlue
                                          ?.copyWith(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '10 - 1 AM',
                                      style: CustomTheme.normalBlue
                                          ?.copyWith(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tuesday',
                                      style: CustomTheme.normalBlue
                                          ?.copyWith(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2 - 4 PM',
                                      style: CustomTheme.normalBlue
                                          ?.copyWith(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Wednesday',
                                      style: CustomTheme.normalBlue
                                          ?.copyWith(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '8 - 10 AM',
                                      style: CustomTheme.normalBlue
                                          ?.copyWith(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const ParaSpacing(),
                        Text(
                          'Other Subjects',
                          style:
                              CustomTheme.bigTitle?.copyWith(fontSize: 21.sp),
                        ),
                        const CustomSpacing(),
                        Text(
                          '21033 Calculus 1',
                          style:
                              CustomTheme.normalBlue?.copyWith(fontSize: 16.sp),
                        ),
                        const CustomSpacing(),
                        Text(
                          '21032 Calculus 3',
                          style:
                              CustomTheme.normalBlue?.copyWith(fontSize: 16.sp),
                        ),
                        const ParaSpacing(),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    onPressed: () {
                      Get.bottomSheet(
                        SizedBox(height: 415.h, child: const BookTutor()),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
