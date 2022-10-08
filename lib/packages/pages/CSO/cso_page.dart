import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/open_notifications_page_icon_button.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';
import 'package:psut_portal/packages/components/bottom-nav-bar/custom_bottom_nav_bar.dart';
import 'package:psut_portal/packages/pages/CSO/components/bottom_tabbar_appbar.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_page_body.dart';

class CSOPage extends StatelessWidget {
  static const String id = '/CSOPage';

  const CSOPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBarSimple(
          bottomsize: 100,
          bottomWidget: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: CSOBottomTabBar(),
          ),
          actions: [
            OpenNotificationPageIconButton(),
            OpenDrawerIconButton(),
          ],
        ),
        backgroundColor: Colors.white,
        body: CsoPageBody(),
        endDrawer: BodyDrawer(),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
