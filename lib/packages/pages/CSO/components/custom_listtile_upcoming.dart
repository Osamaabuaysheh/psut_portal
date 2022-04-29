import 'package:flutter/material.dart';
import 'package:psut_portal/Themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CustomListTileUpcoming extends StatelessWidget {
  const CustomListTileUpcoming({
    Key? key,
    final IconData? icon,
    final String title = '',
  })  : _title = title,
        _icon = icon,
        super(key: key);

  final IconData? _icon;
  final String _title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        _icon,
        color: AppColors.mainColor,
      ),
      title: Text(
        _title,
        style: CustomTheme.secondaryTextStyle?.apply(
          color: Colors.grey,
        ),
      ),
    );
  }
}
