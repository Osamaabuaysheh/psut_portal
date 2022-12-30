import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/RequestCourse/Controllers/course_request_controller.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/tutors_text_field.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class RequsetCoursePageBody extends StatelessWidget {
  const RequsetCoursePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
    final CourseRequestController controller =
        Get.put(CourseRequestController());

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
                'Request Course',
                style: CustomTheme.bigTitle,
              ),
              SizedBox(height: 10.h),
              Text(
                "Please provide the following information of the Course You Want to be tutored",
                style: CustomTheme.normalBlue?.copyWith(fontSize: 16.sp),
              ),
              SizedBox(height: 20.h),
              TutorTextField(
                name: 'Course ID',
                controller: controller.courseID,
              ),
              SizedBox(height: 20.h),
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
