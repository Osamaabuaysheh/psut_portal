import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/open_notifications_page_icon_button.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/utils/path_image.dart';

class StudentCards extends StatelessWidget {
  const StudentCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSimple(
        actions: [OpenNotificationPageIconButton(), OpenDrawerIconButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomSpacing(),
              Image.asset(PathImage.cardID),
              Image.asset(PathImage.cardID),
              Image.asset(PathImage.cardID),
            ],
          ),
        ),
      ),
    );
  }
}
