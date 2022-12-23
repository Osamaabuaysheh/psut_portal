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
              Container(
                padding: EdgeInsets.symmetric(vertical: 7.sp),
                child: Text(
                  'Semester of Completion',
                  style: CustomTheme.bigTitle?.copyWith(fontSize: 20.sp),
                ),
              ),
              SizedBox(
                height: 45.h,
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.mainColor, width: 2.w),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: GetX<TutorRequestController>(
                    builder: (controller) => ButtonTheme(
                      alignedDropdown: true,
                      padding: EdgeInsets.all(30.w),
                      child: DropdownButton<String>(
                        underline: Container(),
                        iconSize: 35.w,
                        isExpanded: true,
                        value: controller.value.value.isNotEmpty
                            ? controller.value.value
                            : null,
                        hint: const Text('Choose'),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            controller.value.value = newValue;
                          }
                        },
                        items: controller.dropDownMenuItems,
                      ),
                    ),
                  ),
                ),
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
