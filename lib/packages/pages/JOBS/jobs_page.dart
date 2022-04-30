import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/open_notifications_page_icon_button.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';

class JOBSPage extends StatelessWidget {
  static const String id = 'JOBSPage';

  const JOBSPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSimple(
        title: "",
        actions: [
          OpenNotificationPageIconButton(),
          OpenDrawerIconButton(),
        ],
      ),
      body: Center(child: Text("Job")),
      endDrawer: BodyDrawer(),
    );
  }
}
