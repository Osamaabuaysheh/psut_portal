import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/JOBS/components/custom_background_image_job_desc.dart';
import 'package:psut_portal/packages/pages/JOBS/components/custom_icon_image_job_desc.dart';
import 'package:psut_portal/packages/pages/JOBS/components/job_desc_details.dart';
import 'package:psut_portal/packages/pages/JOBS/components/row_icons_buttons.dart';
import 'package:psut_portal/themes/app_colors.dart';

class JobDesc extends StatelessWidget {
  static const String id = '/JobDesc';
  const JobDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const PopIconButton(
            color: Colors.white,
            size: 25,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const CustomBackgroundImageJobDesc(),
                  Baseline(
                    baselineType: TextBaseline.alphabetic,
                    baseline: 70,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 35.w),
                        child: const CustomIconImageJobDesc(),
                      ),
                    ),
                  ),
                  Baseline(
                    baselineType: TextBaseline.alphabetic,
                    baseline: -10,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: const RowIconButtons(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.w),
              const JobDescDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
