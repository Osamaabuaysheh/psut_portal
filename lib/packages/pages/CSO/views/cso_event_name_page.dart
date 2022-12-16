import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/cso_event_component.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/event_name_details_card.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CsoEventNamePage extends StatelessWidget {
  static const String id = '/CsoEventNamePage';

  const CsoEventNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = Get.arguments[0];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: "${ApiLogin.baseUrl}/${s.image}",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const PopIconButton(color: Colors.white, size: 25),
                  CsoEventComponent(
                      eventName: s.eventName, dateTime: s.startDate),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: CustomTheme.mainTextStyle
                            ?.copyWith(fontSize: 18.sp),
                      ),
                      SizedBox(height: 10.h),
                      Text(s.description),
                      SizedBox(height: 10.h),
                      Column(
                        children: [
                          EventNameDetails(
                            icon: Icons.location_on_outlined,
                            text: "Location",
                            details: s.location,
                          ),
                          EventNameDetails(
                            icon: Icons.calendar_month,
                            text: "Duration",
                            details:
                                "${s.startDate} (${s.startTime.toString().substring(0, 5)}) -  ${s.startDate} (${s.startTime.toString().substring(0, 5)})",
                          ),
                          EventNameDetails(
                            icon: Icons.category,
                            text: "Category",
                            details: s.category,
                          ),
                          EventNameDetails(
                            icon: Icons.female,
                            text: "Gender",
                            details: s.gender,
                          ),
                          EventNameDetails(
                            icon: Icons.supervisor_account,
                            text: "Supervisor",
                            details: s.supervisor,
                          ),
                          EventNameDetails(
                            icon: Icons.more_time_rounded,
                            text: "Hours",
                            details: s.hoursCredit.toString(),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: CustomTheme.mainTextStyle?.copyWith(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: AppColors.mainColor,
                            padding: EdgeInsets.symmetric(
                                horizontal: 35.w, vertical: 10.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.r),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
