import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class ButtonModalSheetCard extends StatelessWidget {
  const ButtonModalSheetCard({
    Key? key,
    required String mainText,
    void Function()? onPressed,
  })  : _mainText = mainText,
        _onPressed = onPressed,
        super(key: key);

  final String _mainText;
  final void Function()? _onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.w,
      height: 40.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r))),
        onPressed: _onPressed,
        child: Text(
          _mainText.toString(),
          style: CustomTheme.mainTextStyle
              ?.copyWith(color: Colors.white, fontSize: 22.sp),
        ),
      ),
    );
  }
}
