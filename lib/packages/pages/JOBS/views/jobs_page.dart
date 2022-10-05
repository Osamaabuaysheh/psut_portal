import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/open_notifications_page_icon_button.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';
import 'package:psut_portal/packages/pages/JOBS/components/custom_bottom_job_search.dart';
import 'package:psut_portal/packages/pages/JOBS/components/jobs_body.dart';
import 'package:psut_portal/packages/pages/JOBS/controllers/tab_bar_controller.dart';

class JOBSPage extends StatelessWidget {
  static const String id = '/JOBSPage';

  JOBSPage({Key? key}) : super(key: key);

  final TabBarController _tabBarController = Get.put(TabBarController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarSimple(
          actions: const [
            OpenNotificationPageIconButton(),
            OpenDrawerIconButton(),
          ],
          bottomsize: 120.h,
          bottomWidget: PreferredSize(
            child: CustomBottomJobSearch(),
            preferredSize: const Size.fromHeight(0),
          ),
        ),
        body: JobsBody(),
        endDrawer: const BodyDrawer(),
      ),
    );
  }
}
