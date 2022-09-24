import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/search_controller.dart';

import 'jobs_cards.dart';

class JobsAll extends StatelessWidget {
  const JobsAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315.w,
      height: 97.h,
      child: GetX<SearchController>(
        init: SearchController(),
        builder: (controller) => controller.displayList.isEmpty
            ? const Center(
                child: Text("No Results"),
              )
            : ListView.builder(
                itemBuilder: (context, index) => JobsCard(
                  jobTitle: controller.displayList[index].toString(),
                ),
                itemCount: controller.displayListLength.toInt(),
              ),
      ),
    );
  }
}
