import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CustomBorderdButton extends StatelessWidget {
  const CustomBorderdButton({
    Key? key,
    required String text,
    required IconData? icon,
    required void Function()? func,
  })  : _text = text,
        _icon = icon,
        _onPressed = func,
        super(key: key);

  final String _text;
  final IconData? _icon;
  final void Function()? _onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(_icon),
          SizedBox(width: 10.w),
          Text(
            _text,
            style: CustomTheme.mainTextStyle
                ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.normal),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: AppColors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
          side: BorderSide(
            color: AppColors.mainColor,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
