import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/CSO/controllers/cso_events_controller.dart';
import 'package:psut_portal/packages/pages/EVENTS/controllers/event_controller.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/CSO_Card/cso_card.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card.dart';
import 'package:psut_portal/packages/pages/Home/components/custom_home_card_title.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Jobs_Card/job_card.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/packages/pages/SavedJobs/controllers/saved_jobs_controller.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({Key? key}) : super(key: key);

  final EventController controller = Get.put(EventController());
  final CSOEventsController csoController = Get.put(CSOEventsController());

  final SavedJobsController savedController = Get.put(SavedJobsController());
  final JobsController jobsController = Get.put(JobsController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomHomeCardTitle(
                cardName: "Events",
              ),
              const EventCard(),
              const CustomHomeCardTitle(
                cardName: "Jobs",
              ),
              JobCard(),
              const CustomHomeCardTitle(
                cardName: "Community Service",
              ),
              SizedBox(height: 20.w),
              const CSOCard(),
            ],
          ),
        ),
      ),
    );
  }
}
