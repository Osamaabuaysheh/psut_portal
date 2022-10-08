import 'package:get/get.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/controller/bottom_nav_bar_state.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavBarController());
  }
}
