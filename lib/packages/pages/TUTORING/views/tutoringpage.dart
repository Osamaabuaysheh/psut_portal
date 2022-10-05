import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/open_notifications_page_icon_button.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';
import 'package:psut_portal/packages/components/search_jobs.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/custom_college_tab_bar.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/tutoring_body.dart';
import 'package:psut_portal/utils/path_image.dart';

class TutorPage extends StatelessWidget {
  static const String id = '/TutorPage';

  const TutorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarSimple(
          title: "",
          actions: const [
            OpenNotificationPageIconButton(),
            OpenDrawerIconButton(),
          ],
          bottomsize: 150.w,
          bottomWidget: PreferredSize(
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: TabBar(
                    indicatorColor: Colors.transparent,
                    tabs: [
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
      ),
    );
  }
}
