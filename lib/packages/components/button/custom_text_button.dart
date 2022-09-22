import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    String text = "",
    void Function()? onPressed,
  })  : _text = text,
        _onPressed = onPressed,
        super(key: key);

  final String _text;
  final void Function()? _onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _onPressed,
      child: Text(
        _text,
        style: CustomTheme.mainTextStyle
            ?.copyWith(fontSize: 13.sp, fontWeight: FontWeight.normal),
      ),
    );
  }
}
