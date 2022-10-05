import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_profile_page_table/cso_profile_table.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CsoProfilePage extends StatelessWidget {
  static const id = '/CsoProfilePage';
  const CsoProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        bottomsize: 60,
        actions: const [PopIconButton()],
        bottomWidget: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Align(
            widthFactor: 2.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hours Completed: 8",
                  style: CustomTheme.mainTextStyle,
                ),
                SizedBox(height: 10.w),
                Text(
                  "Rating: 10",
                  style: CustomTheme.mainTextStyle,
                ),
              ],
            ),
            alignment: Alignment.centerLeft,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: const CsoProfileCustomTable(),
    );
  }
}
