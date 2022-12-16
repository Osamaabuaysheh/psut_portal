import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/job_description.dart';
import 'package:psut_portal/packages/pages/SavedJobs/controllers/saved_jobs_controller.dart';

import 'jobs_cards.dart';

class JobsAll extends StatelessWidget {
  JobsAll({Key? key}) : super(key: key);

  final SavedJobsController savedController = Get.find();
  final JobsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetX<JobsController>(
      builder: (controller) => controller.displayList.isEmpty
          ? const Center(
              child: Text("No Results"),
            )
          : RefreshIndicator(
              onRefresh: controller.getJobs,
              child: ListView.builder(
                itemBuilder: (context, index) => InkWell(
                  onTap: () => Get.toNamed(
                    JobDesc.id,
                    arguments: [controller.displayList[index]],
                  ),
                  child: JobsCard(
                    jobID: controller.displayList[index].jobID ?? -1,
                    jobTitle: controller.displayList[index].jobTitle ?? "",
                    companyName:
                        controller.displayList[index].companyName ?? "",
                    date: controller.displayList[index].jobDeadline ?? "",
                    college: controller.displayList[index].college ?? "",
                    onPressed: () async {
                      savedController.addToSaved(controller.displayList[index]);
                    },
                  ),
                ),
                itemCount: controller.displayList.length.toInt(),
              ),
            ),
    );
  }
}
