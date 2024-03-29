import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:psut_portal/packages/pages/JOBS/job_description.dart';
import 'package:psut_portal/packages/pages/JOBS/jobs_cards.dart';
import 'package:psut_portal/packages/pages/SavedJobs/controllers/saved_jobs_controller.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class SavedJobsPage extends StatelessWidget {
  SavedJobsPage({Key? key}) : super(key: key);

  static String id = "/SavedJobsPage";
  final SavedJobsController savedJobsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saved Jobs",
          style: CustomTheme.mainTextStyle
              ?.copyWith(fontSize: 20.sp, fontWeight: FontWeight.normal),
        ),
        leading: IconButton(
          icon: Icon(Icons.chevron_left_outlined, size: 38.w),
          onPressed: () {
            Navigator.pop(context);
          },
          color: AppColors.mainColor,
        ),
      ),
      backgroundColor: AppColors.white.withOpacity(0.9),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: GetX<SavedJobsController>(
            builder: (controller) => controller.savedJobs.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LottieBuilder.asset('assets/Lottie/no_saved_jobs.json'),
                      Text(
                        "No Saved Jobs",
                        style: CustomTheme.mainTextStyle
                            ?.copyWith(fontSize: 20.sp),
                      ),
                    ],
                  )
                : Padding(
                    padding: EdgeInsets.only(top: 15.w),
                    child: ListView.builder(
                      itemBuilder: (context, index) => InkWell(
                        onTap: () => Get.toNamed(JobDesc.id),
                        child: JobsCard(
                          jobID: controller.savedJobs[index].jobID ?? -1,
                          jobTitle: controller.savedJobs[index].jobTitle ?? "",
                          companyName:
                              controller.savedJobs[index].companyName ?? "",
                          date: controller.savedJobs[index].jobDeadline ?? "",
                          college: controller.savedJobs[index].college ?? "",
                          onPressed: () {
                            controller.removeFromSaved(
                                controller.savedJobs[index].jobID ?? -1);
                          },
                        ),
                      ),
                      itemCount: controller.savedJobs.length,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
