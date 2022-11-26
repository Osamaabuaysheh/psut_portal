import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:psut_portal/packages/pages/JOBS/job_description.dart';
import 'package:psut_portal/packages/pages/SavedJobs/controllers/saved_jobs_controller.dart';
import 'package:psut_portal/themes/custom_theme.dart';

import 'jobs_cards.dart';

class JobsSaved extends StatelessWidget {
  JobsSaved({Key? key}) : super(key: key);

  final SavedJobsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315.w,
      height: 97.h,
      child: GetX<SavedJobsController>(
        builder: (controller) => controller.savedJobs.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LottieBuilder.asset('assets/Lottie/no_saved_jobs.json'),
                  Text(
                    "No Saved Jobs",
                    style: CustomTheme.mainTextStyle?.copyWith(fontSize: 20.sp),
                  ),
                ],
              )
            : ListView.builder(
                itemBuilder: (context, index) => InkWell(
                  onTap: () => Get.toNamed(JobDesc.id),
                  child: JobsCard(
                    jobID: controller.savedJobs[index].jobID ?? -1,
                    jobTitle: controller.savedJobs[index].jobTitle ?? "",
                    companyName: controller.savedJobs[index].companyName ?? "",
                    date: controller.savedJobs[index].jobDeadline ?? "",
                    college: controller.savedJobs[index].college ?? "",
                    onPressed: () {
                      debugPrint("JOBID: " +
                          controller.savedJobs[index].jobID.toString());
                      controller.removeFromSaved(
                          controller.savedJobs[index].jobID ?? -1);
                    },
                  ),
                ),
                itemCount: controller.savedJobs.length,
              ),
      ),
    );
  }
}
