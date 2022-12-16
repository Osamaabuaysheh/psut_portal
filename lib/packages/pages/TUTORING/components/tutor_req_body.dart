import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/TUTORING/Controllers/tutor_request_controller.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/tutors_text_field.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class TutorReqBody extends StatelessWidget {
  TutorReqBody({Key? key}) : super(key: key);
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  final TutorRequestController controller = Get.put(TutorRequestController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _keyForm,
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
              TutorTextField(
                name: 'Course ID',
                controller: controller.courseID,
              ),
              SizedBox(height: 20.h),
              TutorTextField(
                name: 'Semester of Completion',
                controller: controller.semesterOfCompletion,
              ),
              TutorTextField(
                name: 'Grade',
                controller: controller.grade,
              ),
              SizedBox(height: 40.h),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 238.w,
                  height: 52.h,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.submitRequest();
                    },
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
    );
  }
}
