import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class AddCardDottedButton extends StatelessWidget {
  const AddCardDottedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(20),
      dashPattern: const [10, 10],
      color: Colors.grey,
      strokeWidth: 2,
      child: SizedBox(
        height: 60.h,
        child: Row(
          children: [
            SizedBox(width: 30.w),
            Icon(
              Icons.add_circle_outline,
              size: 30.w,
              color: Colors.grey.shade600,
            ),
            SizedBox(width: 10.w),
            Text(
              "Add Card",
              style: CustomTheme.details
                  ?.copyWith(fontSize: 18.sp, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
