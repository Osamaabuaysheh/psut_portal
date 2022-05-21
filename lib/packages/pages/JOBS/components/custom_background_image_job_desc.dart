import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/utils/path_image.dart';

class CustomBackgroundImageJobDesc extends StatelessWidget {
  const CustomBackgroundImageJobDesc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(23.r),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: SizedBox(
          height: 200.h,
          width: double.infinity,
          child: Image.asset(
            PathImage.amazonOffice,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
