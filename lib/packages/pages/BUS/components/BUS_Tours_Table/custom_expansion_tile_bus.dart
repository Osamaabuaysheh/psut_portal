import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CustomExpansionTileBus extends StatelessWidget {
  const CustomExpansionTileBus({
    Key? key,
    final String text = '',
    List<Widget> children = const [],
  })  : _text = text,
        _children = children,
        super(key: key);

  final String _text;
  final List<Widget> _children;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.r),
      child: ExpansionTile(
        collapsedBackgroundColor: AppColors.mainColor,
        backgroundColor: AppColors.mainColor,
        trailing: Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Colors.white,
          size: 30.w,
        ),
        children: _children,
        tilePadding: EdgeInsets.all(5.h),
        title: Container(
          padding: EdgeInsets.all(5.w),
          child: Text(
            _text,
            style: CustomTheme.mainTextStyle?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
