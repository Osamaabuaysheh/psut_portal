import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/Cards/components/button_modal_sheet_card.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class AddCardDottedButton extends StatelessWidget {
  const AddCardDottedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) => Container(
            height: 250.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.h),
                Text(
                  'Select Card Type',
                  style: CustomTheme.mainTextStyle?.copyWith(fontSize: 22.sp),
                ),
                ButtonModalSheetCard(mainText: "Student ID", onPressed: () {}),
                ButtonModalSheetCard(mainText: "Bus Card", onPressed: () {}),
                ButtonModalSheetCard(mainText: "Car Permit", onPressed: () {}),
                SizedBox(height: 10.h),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.r),
                topRight: Radius.circular(50.r),
              ),
            ),
          ),
        );
      },
      child: DottedBorder(
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
      ),
    );
  }
}
