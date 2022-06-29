
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClubIconImage extends StatelessWidget {
  const ClubIconImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Baseline(
      baseline: 70.h,
      baselineType: TextBaseline.alphabetic,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(100.r),
        child: Container(
          width: 90.w,
          height: 100.h,
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          child: InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.r),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                "assets/images/AmazonLogo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}