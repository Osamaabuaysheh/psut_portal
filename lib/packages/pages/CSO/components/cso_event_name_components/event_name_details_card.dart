import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/Themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class EventNameDetails extends StatelessWidget {
  const EventNameDetails({
    Key? key,
    required final IconData icon,
    required final String text,
    final String details = "",
  })  : _text = text,
        _details = details,
        _icon = icon,
        super(key: key);

  final IconData _icon;
  final String _text;
  final String _details;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.w),
      padding: EdgeInsets.symmetric(vertical: 5.w),
      child: Row(
        children: [
          Expanded(
            child: Icon(
              _icon,
              size: 25.w,
              color: AppColors.mainColor,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              _text,
              style: CustomTheme.mainTextStyle?.copyWith(fontSize: 14.sp),
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            flex: 5,
            child: Text(
              _details,
              style: CustomTheme.mainTextStyle?.copyWith(
                color: Colors.grey,
                fontSize: 13.sp,
                fontWeight: FontWeight.normal,
              ),
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
