import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/button/custom_button.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/report_car_controller.dart';
import 'package:psut_portal/packages/pages/Cards/components/contact_permit.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class ReportCarBottomSheet extends StatelessWidget {
  ReportCarBottomSheet({
    Key? key,
  }) : super(key: key);
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  final carNumberController = Get.put(ReportCarController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        ),
      ),
      height: 400.h,
      width: double.infinity,
      child: Form(
        key: _keyForm,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Report Car Blocking",
                  style: CustomTheme.mainTextStyle?.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  "Enter the plate permit number of the car that is currently blocking yours in order to contact them",
                  style: CustomTheme.mainTextStyle?.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 40.h),
                Text(
                  "Permit Number",
                  style: CustomTheme.mainTextStyle?.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 338.w,
                  height: 54.h,
                  child: TextFormField(
                    controller: carNumberController.carPermitNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 7.sp),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.blue, width: 1.5),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.blue, width: 1.5),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.blue, width: 1.5),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        hintText: "Permit Number",
                        hintStyle:
                            TextStyle(color: AppColors.grey, fontSize: 16.sp),
                        floatingLabelAlignment: FloatingLabelAlignment.start),
                    style: TextStyle(color: AppColors.blue, fontSize: 18.sp),
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: CustomButton(
                    textButton: "Next",
                    onPressed: () {
                      carNumberController.setCarPermit = int.parse(
                          carNumberController
                              .carPermitNumberController.value.text);
                      Get.back();
                      carNumberController.carPermitNumberController.clear();
                      Get.bottomSheet(ContactPermitBottomSheet());
                    },
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
