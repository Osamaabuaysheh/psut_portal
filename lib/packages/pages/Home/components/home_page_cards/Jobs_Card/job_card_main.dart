import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/Themes/app_colors.dart';
import 'package:psut_portal/utils/svg_images.dart';

class JobCardMain extends StatelessWidget {
  const JobCardMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: ListTile(
            leading: SizedBox(
              child: AppSvg.psutLogoOragne,
              width: 50.w,
              height: 50.h,
            ),
            title: Padding(
              padding: EdgeInsets.all(8.w),
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
            trailing: Padding(
              padding: EdgeInsets.only(top: 8.w),
              child: Icon(
                Icons.bookmark_border,
                size: 25.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
