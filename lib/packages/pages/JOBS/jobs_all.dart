import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';

import 'jobs_cards.dart';

class JobsAll extends StatelessWidget {
  const JobsAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<JobsController>(
      init: JobsController(),
      builder: (controller) => controller.displayList.isEmpty
          ? const Center(
              child: Text("No Results"),
            )
          : ListView.builder(
              itemBuilder: (context, index) => JobsCard(
                jobTitle: controller.displayList[index].jobTitle ?? "",
                companyName: controller.displayList[index].companyName ?? "",
                date: controller.displayList[index].jobDeadline ?? "",
                college: controller.displayList[index].college ?? "",
                onPressed: () {},
                isFavourite: false.obs,
              ),
              itemCount: controller.displayList.length.toInt(),
            ),
    );
  }
}
