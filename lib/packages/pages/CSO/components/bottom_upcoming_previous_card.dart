import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class BottomUpcomingPreviousCard extends StatelessWidget {
  const BottomUpcomingPreviousCard({
    Key? key,
    void Function()? moreDetailFunc,
    void Function()? signUpDetailFunc,
  })  : _moreDetailFunc = moreDetailFunc,
        _signUpDetailFunc = signUpDetailFunc,
        super(key: key);

  final void Function()? _moreDetailFunc;
  final void Function()? _signUpDetailFunc;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: _moreDetailFunc,
          child: Text(
            "More Details",
            style: CustomTheme.secondaryTextStyle?.apply(
              color: Colors.grey,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: _signUpDetailFunc,
          child: Text(
            "Sign Up",
            style: CustomTheme.mainTextStyle?.apply(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: AppColors.mainColor,
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 8.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        ),
      ],
    );
  }
}
