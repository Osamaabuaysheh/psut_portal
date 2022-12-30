import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/job_description.dart';
import 'package:psut_portal/packages/pages/JOBS/jobs_cards.dart';
import 'package:psut_portal/packages/pages/SavedJobs/controllers/saved_jobs_controller.dart';
class JobCard extends StatelessWidget {
  JobCard({
    Key? key,
  }) : super(key: key);
  final JobsController controller = Get.find();
  final SavedJobsController savedController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: GetX<JobsController>(
        builder: (controller) => ListView.builder(
          itemCount: controller.displayList.length < 5
              ? controller.displayList.length
              : 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () => Get.toNamed(
              JobDesc.id,
              arguments: [controller.displayList[index]],
            ),
            child: JobsCard(
              jobID: controller.displayList[index].jobID ?? -1,
              jobTitle: controller.displayList[index].jobTitle ?? "",
              companyName: controller.displayList[index].companyName ?? "",
              date: controller.displayList[index].jobDeadline ?? "",
              college: controller.displayList[index].college ?? "",
              onPressed: ()  {
                controller.checkIfExist(
                    controller.displayList[index].jobID,
                    savedController.savedJobs)
                    ? savedController.removeFromSaved(
                    controller.displayList[index].jobID)
                    : savedController
                    .addToSaved(controller.displayList[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
