import 'package:get/get.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/controller/bottom_nav_bar_state.dart';
import 'package:psut_portal/packages/pages/BUS/controllers/bus_images_controller.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/bus_route_controller.dart';
import 'package:psut_portal/packages/pages/Cards/Controllers/student_details_controller.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/tab_bar_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavBarController(), fenix: true);
    Get.lazyPut(() => TabBarController(), fenix: true);
    Get.lazyPut(() => StudentDetailsContoller(), fenix: true);
    Get.lazyPut(() => BusRouteStudentController(), fenix: true);
    Get.lazyPut(() => BusImagesController(), fenix: true);
  }
}
