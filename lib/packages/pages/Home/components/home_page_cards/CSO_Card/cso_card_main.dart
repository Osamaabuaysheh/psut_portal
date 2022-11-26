import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';

class CSOCardMain extends StatelessWidget {
  const CSOCardMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      margin: EdgeInsets.symmetric(
        vertical: 5.w,
        horizontal: 5.w,
      ),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cancer awareness lecture",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "On The Occasion if cancer awareness month",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.calendar_month),
                        SizedBox(width: 10.w),
                        const Text("Date And Time"),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        const Icon(Icons.calendar_month),
                        SizedBox(width: 10.w),
                        const Text("Date And Time"),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        const Icon(Icons.calendar_month),
                        SizedBox(width: 10.w),
                        const Text("Date And Time"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
