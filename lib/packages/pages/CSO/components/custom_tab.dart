import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/Themes/app_colors.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    Key? key,
    final String text = '',
  })  : _text = text,
        super(key: key);

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: AppColors.mainColor,
            width: 1,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(_text),
        ),
      ),
    );
  }
}
