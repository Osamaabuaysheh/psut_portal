import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class ClubTitleText extends StatelessWidget {
  const ClubTitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "ACM Student Chapter - PSUT",
      style: CustomTheme.mainTextStyle?.copyWith(fontSize: 18.sp),
    );
  }
}
