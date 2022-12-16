import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class NoEventsLottie extends StatelessWidget {
  const NoEventsLottie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(30.w),
          child: Lottie.asset("assets/Lottie/No-Events.json"),
        ),
        Text(
          "No Events Right Now",
          style: CustomTheme.mainTextStyle?.copyWith(fontSize: 20.sp),
        )
      ],
    );
  }
}
