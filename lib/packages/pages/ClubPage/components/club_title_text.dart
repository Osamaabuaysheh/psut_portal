import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class ClubTitleText extends StatelessWidget {
  const ClubTitleText({
    Key? key,
    required String title,
  })  : _title = title,
        super(key: key);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Text(
      _title.toUpperCase(),
      style: CustomTheme.mainTextStyle?.copyWith(fontSize: 25.sp),
    );
  }
}
