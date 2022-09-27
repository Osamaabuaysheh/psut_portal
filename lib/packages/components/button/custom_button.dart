import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    double fromHeight = 50,
    final String textButton = 'Button',
    required void Function()? onPressed,
    final double width = 0,
  })  : _fromHieght = fromHeight,
        _textButton = textButton,
        _onPressed = onPressed,
        _width = width,
        super(key: key);

  final double _fromHieght;
  final String _textButton;
  final void Function()? _onPressed;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: _width.w),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r)),
            minimumSize: Size.fromHeight(_fromHieght.w),
            backgroundColor: AppColors.mainColor,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 17.w),
          ),
          onPressed: _onPressed,
          child: Text(_textButton),
        ),
      ),
    );
  }
}
