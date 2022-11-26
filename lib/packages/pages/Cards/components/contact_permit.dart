import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/report_car_controller.dart';
import 'package:psut_portal/packages/pages/Cards/components/custom_border_button.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class ContactPermitBottomSheet extends StatelessWidget {
  ContactPermitBottomSheet({Key? key}) : super(key: key);

  final ReportCarController carNumberController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.r), topRight: Radius.circular(50.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              Text(
                "Contact Permit ${carNumberController.carPermitNumber}",
                style: CustomTheme.mainTextStyle?.copyWith(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "License: 36-98155",
                style: CustomTheme.mainTextStyle
                    ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 40.h),
              CustomBorderdButton(
                  text: "Call Anonmously", func: () {}, icon: Icons.call),
              SizedBox(height: 20.h),
              CustomBorderdButton(
                  text: "Send a message", func: () {}, icon: Icons.message),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "or",
                  style: CustomTheme.mainTextStyle
                      ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Contact Student Affairs",
                      style: CustomTheme.mainTextStyle?.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
