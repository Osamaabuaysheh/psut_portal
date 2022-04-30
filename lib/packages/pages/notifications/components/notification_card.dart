import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key? key,
    required final String title,
    required final String description,
  })  : _title = title,
        _description = description,
        super(key: key);

  final String _title;
  final String _description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.all(10.w),
        elevation: 7,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _title,
                style: CustomTheme.mainTextStyle?.copyWith(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 18.h),
              SizedBox(
                width: 200.w,
                child: Text(
                  _description,
                  style: CustomTheme.mainTextStyle?.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
