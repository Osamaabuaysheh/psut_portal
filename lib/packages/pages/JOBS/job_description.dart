import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/JOBS/components/custom_background_image_job_desc.dart';
import 'package:psut_portal/packages/pages/JOBS/components/custom_icon_image_job_desc.dart';
import 'package:psut_portal/packages/pages/JOBS/components/job_desc_details.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/packages/pages/SavedJobs/controllers/saved_jobs_controller.dart';
import 'package:psut_portal/themes/app_colors.dart';

class JobDesc extends StatelessWidget {
  static const String id = '/JobDesc';

  const JobDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SavedJobsController savedController = Get.find();

    final argumets = Get.arguments;
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
                  CustomBackgroundImageJobDesc(
                      imageUrl: argumets[0].jobIconImage),
                  Baseline(
                    baselineType: TextBaseline.alphabetic,
                    baseline: 60,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.w),
                            child: CustomIconImageJobDesc(
                                imageUrl: argumets[0].jobIconImage),
                          ),
                          const Spacer(),
                          GetX<JobsController>(
                            builder: (controller) => IconButton(
                              icon: controller.checkIfExist(
                                argumets[0].jobID,
                                savedController.savedJobs,
                              )
                                  ? Icon(
                                      Icons.bookmark,
                                      size: 40.w,
                                      color: AppColors.blue,
                                    )
                                  : Icon(
                                      Icons.bookmark_border,
                                      size: 40.w,
                                      color: AppColors.blue,
                                    ),
                              onPressed: () {
                                controller.checkIfExist(argumets[0].jobID,
                                        savedController.savedJobs)
                                    ? savedController
                                        .removeFromSaved(argumets[0].jobID)
                                    : savedController.addToSaved(argumets[0]);
                              },
                            ),
                          ),
                          SizedBox(width: 40.w),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.w),
              JobDescDetails(
                jobTitle: argumets[0].jobTitle,
                companyName: argumets[0].companyName,
                deadLineDate: argumets[0].jobDeadline,
                jobDescription: argumets[0].jobDescription,
                jobRequierments: argumets[0].jobRequierments,
                jobResponsanbilities: argumets[0].jobResponsanbilities,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
