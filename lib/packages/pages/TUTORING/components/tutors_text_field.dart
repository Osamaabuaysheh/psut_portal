import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class TutorTextField extends StatelessWidget {
  const TutorTextField({
    final String name = '',
    Key? key,
  })  : _name = name,
        super(key: key);
  final String _name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 7.sp),
          child: Text(
            _name,
            style: CustomTheme.bigTitle?.copyWith(fontSize: 20.sp),
          ),
        ),
        Container(
          width: 338.w,
          height: 54.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: AppColors.blue, width: 2.w)),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.sp),
                border: InputBorder.none,
                //floatingLabelStyle: CustomTheme.bigTitle?.copyWith(fontSize: 20.sp),
                hintText: _name,
                floatingLabelAlignment: FloatingLabelAlignment.start),
          ),
        ),
      ],
    );
  }
}
