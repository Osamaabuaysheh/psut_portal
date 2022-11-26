import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Jobs_Card/job_card_main.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/job_description.dart';
import 'package:psut_portal/packages/pages/JOBS/jobs_cards.dart';
import 'package:psut_portal/packages/pages/JOBS/models/job.dart';
import 'package:psut_portal/packages/pages/SavedJobs/controllers/saved_jobs_controller.dart';

class JobCard extends StatelessWidget {
  JobCard({
    Key? key,
    required final Widget titleWidget,
  })  : _titleWidget = titleWidget,
        super(key: key);
  final Widget _titleWidget;
  final List<Job> lastJobs = [];
  final JobsController controller = Get.find();
  final SavedJobsController savedController = Get.find();

  @override
  Widget build(BuildContext context) {

    for (var element in controller.displayList) {
      var dateRecived = DateTime.parse("${element.jobDeadline}");
      if (DateTime.now().isBefore(dateRecived) &&
          !lastJobs.length.isEqual(10)) {
        lastJobs.add(element);
      }
    }
    return SizedBox(
      width: double.infinity,
      height: 130.h,
      child: Column(
        children: [
          Expanded(child: _titleWidget),
          Expanded(
            flex: 3,
            child: SizedBox(
              height: 100.h,
              child: lastJobs.isEmpty
                  ? const Center(
                      child: Text("No Jobs For Now"),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () => Get.toNamed(
                          JobDesc.id,
                          arguments: [lastJobs[index]],
                        ),
                        child: JobsCard(
                          jobID: lastJobs[index].jobID ?? -1,
                          jobTitle: lastJobs[index].jobTitle ?? "",
                          companyName: lastJobs[index].companyName ?? "",
                          date: lastJobs[index].jobDeadline ?? "",
                          college: lastJobs[index].college ?? "",
                          onPressed: () async {
                            savedController.addToSaved(lastJobs[index]);
                          },
                        ),
                      ),
                      itemCount: lastJobs.length.toInt(),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
