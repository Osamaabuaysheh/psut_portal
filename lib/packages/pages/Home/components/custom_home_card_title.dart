import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/Themes/app_colors.dart';

class CustomHomeCardTitle extends StatelessWidget {
  const CustomHomeCardTitle({
    Key? key,
    required String cardName,
    required void Function()? onPressed,
  })  : _cardName = cardName,
        _onPressed = onPressed,
        super(key: key);

  final String _cardName;
  final void Function()? _onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          _cardName,
          style: TextStyle(
            color: AppColors.mainColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: _onPressed,
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppColors.mainColor,
          ),
        )
      ],
    );
  }
}
