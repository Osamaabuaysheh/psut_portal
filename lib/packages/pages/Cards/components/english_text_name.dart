import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class EnglishTextName extends StatelessWidget {
  const EnglishTextName({
    Key? key,
    required String englishName,
  })  : _englishName = englishName,
        super(key: key);

  final String _englishName;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 168.w,
      left: 45.w,
      child: SizedBox(
        width: 200.w,
        child: Text(
          _englishName,
          style: CustomTheme.bigTitle?.copyWith(
            fontSize: 13.sp,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
