import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/JOBS/apply_cv.dart';
import 'package:psut_portal/themes/app_colors.dart';

class ApplyNowButton extends StatelessWidget {
  const ApplyNowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SizedBox(
                height: 315.h,
                child: const ApplyCv(),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(43.r),
              ),
            ),
          );
        },
        child: const Text(
          'Apply Now',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(191.w, 62.h),
          backgroundColor: AppColors.blue,
          textStyle: TextStyle(color: AppColors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31.r),
          ),
        ),
      ),
    );
  }
}
