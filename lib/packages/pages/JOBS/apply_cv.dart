import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/button/custom_button.dart';
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
            fontSize: 23.sp,
          ),
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: CustomButton(
              onPressed: () {}, textButton: "Apply Now", fromHeight: 50.h),
        ),
      ],
    );
  }
}
