import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/Settings/components/custom_settings_list_tile.dart';
import 'package:psut_portal/packages/pages/Settings/components/settings_list_tile_icon_button.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class SettingsPageBody extends StatelessWidget {
  const SettingsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Account", style: CustomTheme.mainTextStyle),
          CustomSettingsListTile(
            icon: Icons.person,
            title: "Leen Ahmad",
            widget: SettingsListTileIconButton(onPressed: () {}),
          ),
          Text("Perefrences", style: CustomTheme.mainTextStyle),
          CustomSettingsListTile(
            icon: Icons.language,
            title: "Langauge",
            widget: SettingsListTileIconButton(onPressed: () {}),
          ),
          CustomSettingsListTile(
            icon: Icons.lock_outline,
            title: "Privacy and Data",
            widget: SettingsListTileIconButton(onPressed: () {}),
          ),
          CustomSettingsListTile(
            icon: Icons.notifications_none_outlined,
            title: "Notifications",
            widget: SettingsListTileIconButton(onPressed: () {}),
          ),
          Divider(color: AppColors.mainColor, thickness: 1.2, height: 30.h),
          Text("Support", style: CustomTheme.mainTextStyle),
          CustomSettingsListTile(
            icon: Icons.info_outline_rounded,
            title: "About",
            widget: SettingsListTileIconButton(onPressed: () {}),
          ),
          CustomSettingsListTile(
            icon: Icons.help_outline_outlined,
            title: "Help",
            widget: SettingsListTileIconButton(onPressed: () {}),
          ),
          Divider(color: AppColors.mainColor, thickness: 1.2, height: 30.h),
          const CustomSettingsListTile(
            icon: Icons.logout_outlined,
            title: "Logout",
          ),
        ],
      ),
    );
  }
}
