import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/custom_divider.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_profile_page.dart';
import 'package:psut_portal/packages/pages/Cards/views/cards_page.dart';
import 'package:psut_portal/packages/pages/Settings/views/settings_page.dart';
import 'package:psut_portal/packages/pages/auth/Views/wrapper.dart';
import 'package:psut_portal/packages/pages/auth/manage_state/auth_service.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/utils/svg_images.dart';
import 'listtile_drawer.dart';

class SettingDrawer extends StatelessWidget {
  const SettingDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthService _auth = Provider.of<AuthService>(context);
    return Container(
      height: 430.h,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTileDrawer(
              title: "Settings",
              icon: AppSvg.settings,
              onTap: () => Navigator.pushNamed(context, SettingsPage.id),
            ),
            const CustomDivider(),
            // * logout
            ListTileDrawer(
              title: "My Cards",
              icon: AppSvg.card,
              onTap: () => Navigator.popAndPushNamed(context, CardsPage.id),
            ),

            const CustomDivider(),
            ListTileDrawer(
                title: "Community Service Profile",
                icon: AppSvg.csoProfile,
                onTap: () {
                  Navigator.popAndPushNamed(context, CsoProfilePage.id);
                }),
            const CustomDivider(),
            ListTileDrawer(title: "Saved Jobs", icon: AppSvg.saved),
            const CustomDivider(),
            ListTileDrawer(title: "Become a Tutor", icon: AppSvg.tutor),
            const CustomDivider(),
            ListTileDrawer(
              title: "Logout",
              icon: AppSvg.logout,
              onTap: () async {
                _auth.signOut().then(
                      (value) => Navigator.pushNamedAndRemoveUntil(
                        context,
                        Wrapper.id,
                        (route) => false,
                      ),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
