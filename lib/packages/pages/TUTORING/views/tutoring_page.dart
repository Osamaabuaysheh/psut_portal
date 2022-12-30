import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/custom_bottom_nav_bar.dart';
import 'package:psut_portal/packages/components/search_jobs.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/custom_college_tab_bar.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/tutoring_body.dart';
import 'package:psut_portal/utils/path_image.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/TUTORING/Controllers/courses_controller.dart';

class TutorPage extends StatelessWidget {
  static const String id = '/TutorPage';

  TutorPage({Key? key}) : super(key: key);
  final controller = Get.put(CourseController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarSimple(
          actions: const [OpenDrawerIconButton()],
          bottomsize: 150.w,
          bottomWidget: PreferredSize(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TabBar(
                    controller: controller.controller.tabBarcontroller,
                    onTap: (value) =>
                        controller.controller.tabBarcontroller.index = value,
                    indicatorColor: Colors.transparent,
                    tabs: const [
                      CustomCollegeIconTabBar(
                          title: "IT", imageName: PathImage.itLogo),
                      CustomCollegeIconTabBar(
                          title: "Engineering", imageName: PathImage.engLogo),
                      CustomCollegeIconTabBar(
                          title: "Business", imageName: PathImage.busiLogo),
                      CustomCollegeIconTabBar(
                          title: "Sciences", imageName: PathImage.sciencesLogo),
                    ],
                  ),
                ),
                CustomSearch(),
              ],
            ),
            preferredSize: const Size.fromHeight(0),
          ),
        ),
        body: const TutoringBody(),
        endDrawer: const BodyDrawer(),
        bottomNavigationBar: const CustomBottomNavBar(),
      ),
    );
  }
}
