import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/settings_drawer.dart';

class BodyDrawer extends StatelessWidget {
  const BodyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        height: Get.height - 233.h,
        child: SafeArea(
          child: SizedBox(
            width: Get.width - 70,
            child: Drawer(
              elevation: 0,
              backgroundColor: Colors.transparent,
              child: Column(
                children: const [
                  SettingDrawer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
