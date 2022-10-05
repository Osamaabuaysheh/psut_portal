import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/Settings/components/settings_page_body.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class SettingsPage extends StatelessWidget {
  static const String id = "/SettingsPage";
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: CustomTheme.mainTextStyle
              ?.copyWith(fontSize: 20.sp, fontWeight: FontWeight.normal),
        ),
        leading: IconButton(
          icon: Icon(Icons.chevron_left_outlined, size: 38.w),
          onPressed: () {
            Navigator.pop(context);
          },
          color: AppColors.mainColor,
        ),
      ),
      backgroundColor: Colors.white,
      body: const SettingsPageBody(),
    );
  }
}
