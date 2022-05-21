import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CustomSettingsListTile extends StatelessWidget {
  const CustomSettingsListTile({
    Key? key,
    final IconData? icon,
    final String title = "",
    final Widget? widget,
  })  : _icon = icon,
        _title = title,
        _widget = widget,
        super(key: key);

  final IconData? _icon;
  final String _title;
  final Widget? _widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.w),
      child: ListTile(
        leading: Icon(
          _icon,
          color: AppColors.mainColor,
        ),
        title: Text(_title, style: CustomTheme.mainTextStyle),
        trailing: _widget,
      ),
    );
  }
}
