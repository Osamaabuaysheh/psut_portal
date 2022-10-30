import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class ClubTextDetails extends StatelessWidget {
  const ClubTextDetails({
    Key? key,
    required String description,
  })  : _description = description,
        super(key: key);

  final String _description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      child: Text(
        _description,
        style: CustomTheme.details?.copyWith(fontSize: 14.sp),
      ),
    );
  }
}
