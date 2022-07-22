import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    Key? key,
    final String text = '',
    final double width = 150,
  })  : _text = text,
        _width = width,
        super(key: key);

  final String _text;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 35.w,
      child: Container(
        width: _width.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: AppColors.mainColor,
            width: 1,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            _text,
          ),
        ),
      ),
    );
  }
}
