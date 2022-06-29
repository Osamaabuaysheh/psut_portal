import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class ButtonIconText extends StatelessWidget {
  const ButtonIconText({
    Key? key,
    final double width = 300,
    final double height = 40,
    final String titleText = "Button",
    final IconData icon = Icons.add,
  })  : _width = width,
        _height = height,
        _titleText = titleText,
        _icon = icon,
        super(key: key);

  final double _width;
  final double _height;
  final String _titleText;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width.w,
      height: _height.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(_icon),
            SizedBox(width: 5.w),
            Text(
              _titleText,
              style: CustomTheme.bigTitle?.copyWith(
                fontSize: 15.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
