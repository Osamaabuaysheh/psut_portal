import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CsoEventNameAndTime extends StatelessWidget {
  const CsoEventNameAndTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Event Name",
          style: CustomTheme.mainTextStyle?.copyWith(fontSize: 18.sp),
        ),
        SizedBox(height: 3.h),
        const Text(
          "Day- 08:30 to 9:30",
        ),
      ],
    );
  }
}
