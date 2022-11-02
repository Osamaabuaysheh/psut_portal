import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/utils/svg_images.dart';

class JobCardMain extends StatelessWidget {
  const JobCardMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10.w,
        horizontal: 10.w,
      ),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.r),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SizedBox(
                child: AppSvg.psutLogoOrange,
                width: 50.w,
                height: 50.w,
              ),
            ),
            SizedBox(width: 20.w),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Job Title",
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Company Name",
                    style: TextStyle(
                      color: AppColors.mainColor,
                    ),
                  ),
                  Text(
                    "Full Time",
                    style: TextStyle(
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 60.w),
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Icon(
                Icons.bookmark_border,
                size: 30.w,
                color: AppColors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
