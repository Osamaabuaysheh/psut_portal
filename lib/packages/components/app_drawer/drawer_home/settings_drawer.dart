import 'package:flutter/material.dart';
import 'package:psut_portal/language/generated/key_lang.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_profile_page.dart';
import 'package:psut_portal/utils/svg_images.dart';
import 'listtile_drawer.dart';

class SettingDrawer extends StatelessWidget {
  const SettingDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // * Language
        // ListTileDrawer(
        //   title: KeyLang.language,
        //   icon: AppSvg.dTranslate,
        //   onTap: () {
        //     showDialog(
        //       context: context,
        //       barrierDismissible: false,
        //       builder: (context) => const AlertLang(),
        //     );
        //   },
        // ),
        ListTileDrawer(
          title: "CSO Profile",
          icon: AppSvg.groupPeople,
          onTap: () =>
              Navigator.restorablePushNamed(context, CsoProfilePage.id),
        ),
        //  * Theme
        // ListTileDrawer(
        //   title: AppTheme.stateTheme(context),
        //   icon: AppSvg.dTheme,
        //   onTap: () {},
        // ),

        // * logout
        ListTileDrawer(
          title: KeyLang.logout,
          icon: AppSvg.dlogout,
          onTap: () {},
        ),
      ],
    );
  }
}
