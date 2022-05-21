import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';

class RowIconButtons extends StatelessWidget {
  const RowIconButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark_border,
            color: AppColors.blue,
            size: 32.w,
          ),
        ),
        //SizedBox(width: 2.w),
        IconButton(
          //color: Colors.red,
          onPressed: () {},
          icon: Icon(
            Icons.notifications_outlined,
            color: AppColors.blue,
            size: 32.w,
          ),
        ),
      ],
    );
  }
}
