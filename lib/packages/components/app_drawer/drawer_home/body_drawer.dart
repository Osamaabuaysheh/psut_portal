import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/header_drawer.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/settings_drawer.dart';

class BodyDrawer extends StatelessWidget {
  const BodyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          // * Header
          HeaderDrawer(),
          // // * Settings
          SettingDrawer()
        ],
      ),
    );
  }
}
