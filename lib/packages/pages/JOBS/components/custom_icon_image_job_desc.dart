import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/utils/path_image.dart';

class CustomIconImageJobDesc extends StatelessWidget {
  const CustomIconImageJobDesc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(27.r),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        width: 95.w,
        height: 85.h,
        padding: EdgeInsets.all(15.w),
        child: Image.asset(PathImage.amazonLogo),
      ),
    );
  }
}
