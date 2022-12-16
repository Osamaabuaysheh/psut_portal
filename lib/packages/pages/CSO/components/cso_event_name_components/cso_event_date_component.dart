import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CsoEventDate extends StatelessWidget {
  const CsoEventDate({
    Key? key,
    required String month,
    required String day,
  })  : _month = month,
        _day = day,
        super(key: key);

  final String _month;
  final String _day;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.mainColor,
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: _month,
                style: CustomTheme.mainTextStyle?.copyWith(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextSpan(
                text: "\n$_day",
                style: CustomTheme.mainTextStyle?.copyWith(
                  color: Colors.white,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
