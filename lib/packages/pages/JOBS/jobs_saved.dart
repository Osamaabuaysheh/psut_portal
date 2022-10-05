import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/themes/custom_theme.dart';

import 'jobs_cards.dart';

class JobsSaved extends StatelessWidget {
  JobsSaved({Key? key}) : super(key: key);

  final JobsController controller = Get.put(JobsController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.amber,
      width: 315.w,
      height: 97.h,
      child: GetX<JobsController>(
        builder: (controller) => controller.savedList.isEmpty
            ? Column(
                children: [
                  LottieBuilder.asset('assets/Lottie/no_saved_jobs.json'),
                  Text(
                    "No Saved Jobs",
                    style: CustomTheme.mainTextStyle?.copyWith(fontSize: 20.sp),
                  ),
                ],
              )
            : ListView.builder(
                itemBuilder: (context, index) => JobsCard(
                  jobTitle: controller.savedList[index].jobTitle,
                  onPressed: () {
                    controller.removeFromSaved(controller.savedList[index]);
                  },
                  isFavourite: controller.savedList[index].isFavourite,
                ),
                itemCount: controller.savedList.length,
              ),
      ),
    );
  }
}
