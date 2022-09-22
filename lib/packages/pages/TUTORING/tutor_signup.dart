import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/tutors_text_field.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class TutorSignUp extends StatelessWidget {
  static const String id = 'TutorSignUp';
  const TutorSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const AppBarSimple(
        actions: [
          PopIconButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tutor Sign Up',
                  style: CustomTheme.bigTitle,
                ),
                Text(
                  "Please provide the following information\nregarding the subject you wish to tutor.",
                  style: CustomTheme.normalBlue?.copyWith(fontSize: 16.sp),
                ),
                SizedBox(height: 20.h),
                const TutorTextField(
                  name: 'Course ID',
                ),
                SizedBox(height: 20.h),
                const TutorTextField(
                  name: 'Semester of Completion',
                ),
                const TutorTextField(
                  name: 'Grade',
                ),
                SizedBox(height: 40.h),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 238.w,
                    height: 52.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        textStyle: CustomTheme.bigTitle?.copyWith(
                          color: AppColors.white,
                          fontSize: 24.sp,
                        ),
                      ),
                      child: const Text('Submit'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
