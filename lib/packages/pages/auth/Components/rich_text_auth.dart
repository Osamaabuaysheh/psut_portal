import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:psut_portal/services/themes/theme_status.dart';
import 'package:psut_portal/themes/app_colors.dart';

class RichTextAuth extends StatelessWidget {
  const RichTextAuth({
    Key? key,
    required String fword,
    required String sword,
    required Function() onTap,
  })  : _fword = fword,
        _sword = sword,
        _onTap = onTap,
        super(key: key);

  final String _fword;
  final String _sword;
  final Function() _onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(
            text: _fword.tr(),
            style: AppTheme.b1(context).copyWith(
              color: AppTheme.isDark(context)
                  ? AppColors.bgWhite
                  : AppColors.bgBlack,
            ),
          ),
          TextSpan(
            text: _sword.tr(),
            style: AppTheme.h6(context).copyWith(
              color: AppColors.mainColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = _onTap,
          ),
        ],
      ),
    );
  }
}
