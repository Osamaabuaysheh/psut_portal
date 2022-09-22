import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';

class CustomTabJobs extends StatelessWidget {
  const CustomTabJobs({
    Key? key,
    final String? text,
  })  : _text = text,
        super(key: key);

  final String? _text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 39.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        border: Border.all(color: AppColors.blue, width: 1),
      ),
      child: Tab(
        child: Text(_text.toString()),
      ),
      //text: 'All',
    );
  }
}
