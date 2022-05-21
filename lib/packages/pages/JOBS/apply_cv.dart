import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';

class ApplyCv extends StatelessWidget {
  const ApplyCv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Upload your CV',
          style: TextStyle(
              color: AppColors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 23.sp),
        ),
        DottedBorder(
          color: AppColors.blue,
          strokeWidth: 2,
          dashPattern: const [10, 10],
          borderType: BorderType.RRect,
          radius: Radius.circular(17.r),
          child: SizedBox(
            width: 320.w,
            height: 64.h,
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                //style: ButtonStyle(),
                label: Text(
                  'Attach file',
                  style: TextStyle(
                    color: AppColors.blue,
                    fontSize: 20.sp,
                  ),
                ),
                icon: Icon(
                  Icons.add_circle_outline,
                  color: AppColors.blue,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Apply Now',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
              fixedSize: Size(191.w, 62.h),
              primary: AppColors.blue,
              textStyle: TextStyle(color: AppColors.white),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(31.r))),
        ),
      ],
    );
  }
}
