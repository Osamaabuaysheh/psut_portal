import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:psut_portal/services/themes/theme_status.dart';
import 'package:psut_portal/themes/app_colors.dart';

class SimpleBtn extends StatelessWidget {
  const SimpleBtn({
    Key? key,
    double height = 40,
    required void Function()? onTap,
    required String btnTitle,
    bool ltr = true,
  })  : _height = height,
        _onTap = onTap,
        _btnTitle = btnTitle,
        _ltr = ltr,
        super(key: key);

  final double _height;
  final void Function()? _onTap;
  final String _btnTitle;
  final bool _ltr;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Container(
        width: AppTheme.sw(context),
        height: _height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(
            colors: AppColors.btnColor,
            begin: _ltr ? Alignment.centerLeft : Alignment.centerRight,
            end: _ltr ? Alignment.centerRight : Alignment.centerLeft,
          ),
        ),
        child: Text(
          _btnTitle.tr().toUpperCase(),
          style: AppTheme.h5(context).copyWith(),
        ),
      ),
    );
  }
}
