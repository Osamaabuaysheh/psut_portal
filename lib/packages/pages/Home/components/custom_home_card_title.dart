import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/Themes/app_colors.dart';

class CustomHomeCardTitle extends StatelessWidget {
  const CustomHomeCardTitle({
    Key? key,
    required String cardName,
    required void Function()? onPressed,
    final bool enableFunc = true,
    final IconData icon = Icons.arrow_forward_ios_outlined,
  })  : _cardName = cardName,
        _onPressed = onPressed,
        _enableFunc = enableFunc,
        _icon = icon,
        super(key: key);

  final String _cardName;
  final void Function()? _onPressed;
  final bool _enableFunc;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            _cardName,
            style: TextStyle(
              color: AppColors.mainColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          _enableFunc
              ? IconButton(
                  onPressed: _onPressed,
                  icon: Icon(
                    _icon,
                    size: 25.w,
                    color: AppColors.mainColor,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
