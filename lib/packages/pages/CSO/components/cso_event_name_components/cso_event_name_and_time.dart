import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CsoEventNameAndTime extends StatelessWidget {
  const CsoEventNameAndTime({
    Key? key,
    required String eventName,
    required String dateTime,
  })  : _eventName = eventName,
        _dateTime = dateTime,
        super(key: key);

  final String _eventName;
  final String _dateTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _eventName,
          style: CustomTheme.mainTextStyle?.copyWith(fontSize: 18.sp),
        ),
        SizedBox(height: 10.h),
        SizedBox(
            width: 150.w,
            child: Text(_dateTime,
                style: CustomTheme.details?.copyWith(fontSize: 14.sp))),
      ],
    );
  }
}
