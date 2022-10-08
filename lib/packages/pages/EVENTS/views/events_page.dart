import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/open_notifications_page_icon_button.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/custom_bottom_nav_bar.dart';
import 'package:psut_portal/packages/pages/EVENTS/components/events_bottom_tabbar.dart';
import 'package:psut_portal/packages/pages/EVENTS/components/events_page_body.dart';

class EventsPage extends StatelessWidget {
  static const String id = '/EventsPage';
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarSimple(
          actions: const [
            OpenNotificationPageIconButton(),
            OpenDrawerIconButton(),
          ],
          bottomsize: 50.w,
          bottomWidget: const PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: EventsBottomTabBar(),
          ),
        ),
        body: const EventsPageBody(),
        endDrawer: const BodyDrawer(),
        bottomNavigationBar: const CustomBottomNavBar(),
      ),
    );
  }
}
