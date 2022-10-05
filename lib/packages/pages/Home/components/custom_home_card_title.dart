import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';

class CustomHomeCardTitle extends StatelessWidget {
  const CustomHomeCardTitle({
    Key? key,
    required String cardName,
    required void Function()? onPressed,
    final bool enableFunc = true,
    final IconData icon = Icons.arrow_forward_ios_outlined,
  })  : _cardName = cardName,
        super(key: key);

  final String _cardName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          _cardName,
          style: TextStyle(
            color: AppColors.mainColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
