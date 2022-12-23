import 'package:get/get.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/controller/bottom_nav_bar_state.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/student_details_controller.dart';
import 'package:psut_portal/packages/pages/EVENTS/controllers/event_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/job_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/tab_bar_controller.dart';
import 'package:psut_portal/packages/pages/SavedJobs/controllers/saved_jobs_controller.dart';
import 'package:psut_portal/packages/pages/CSO/controllers/cso_events_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavBarController(), fenix: true);
    Get.lazyPut(() => EventController(), fenix: true);
    Get.lazyPut(() => CSOEventsController(), fenix: true);
    Get.lazyPut(() => SavedJobsController(), fenix: true);
    Get.lazyPut(() => JobsController(), fenix: true);
    Get.lazyPut(() => TabBarController(), fenix: true);
    Get.lazyPut(() => StudentDetailsContoller(), fenix: true);
  }
}
