import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/cso_event_component.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/event_name_details_card.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CsoEventNamePage extends StatelessWidget {
  static const String id = 'CsoEventNamePage';
  const CsoEventNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    child: const Image(
                      width: double.infinity,
                      image: AssetImage(
                        "assets/images/Image 5.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  const PopIconButton(color: Colors.white, size: 25),
                  const CsoEventComponent(),
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
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and.",
                      ),
                      SizedBox(height: 10.h),
                      Column(
                        children: const [
                          EventNameDetails(
                            icon: Icons.location_on_outlined,
                            text: "Location",
                            details: "Lorem Ipsum is simply dummy text",
                          ),
                          EventNameDetails(
                            icon: Icons.calendar_month,
                            text: "Duration",
                            details: "20-03-2022 (08:30) -  20-03-2022 (10:30)",
                          ),
                          EventNameDetails(
                            icon: Icons.category,
                            text: "Category",
                            details: "Students Activities",
                          ),
                          EventNameDetails(
                            icon: Icons.female,
                            text: "Gender",
                            details: "All",
                          ),
                          EventNameDetails(
                            icon: Icons.supervisor_account,
                            text: "Supervisor",
                            details: "Supervisor Name",
                          ),
                          EventNameDetails(
                            icon: Icons.more_time_rounded,
                            text: "Hours",
                            details: "1",
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
