import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class ClubTextDetails extends StatelessWidget {
  const ClubTextDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      child: Text(
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumylabore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo ",
        style: CustomTheme.details?.copyWith(fontSize: 14.sp),
      ),
    );
  }
}
