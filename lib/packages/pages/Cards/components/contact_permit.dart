import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/report_car_controller.dart';
import 'package:psut_portal/packages/pages/Cards/Models/permit_card_model.dart';
import 'package:psut_portal/packages/pages/Cards/components/custom_border_button.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:url_launcher/url_launcher.dart';

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
      child: FutureBuilder<PermitCardModel?>(
        future: carNumberController.reportCar(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Padding(
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
                        "License: ${snapshot.data?.licenseNumber}",
                        style: CustomTheme.mainTextStyle?.copyWith(
                            fontSize: 18.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 40.h),
                      CustomBorderdButton(
                          text: "Call Anonmously",
                          func: () {
                            launchUrl(Uri.parse(
                                "tel://0${snapshot.data?.phoneNumber}"));
                          },
                          icon: Icons.call),
                      SizedBox(height: 20.h),
                      CustomBorderdButton(
                          text: "Send a message",
                          func: () {
                            launchUrl(Uri.parse(
                                "sms://0${snapshot.data?.phoneNumber}"));
                          },
                          icon: Icons.message),
                      SizedBox(height: 20.h),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "or",
                          style: CustomTheme.mainTextStyle?.copyWith(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
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
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              return const Text("Error Connection");
            }
          } else {
            return const Center(child: Text("No Data"));
          }
        },
      ),
    );
  }
}
