import 'package:flutter/material.dart';
import 'package:psut_portal/themes/app_colors.dart';

class SettingsListTileIconButton extends StatelessWidget {
  const SettingsListTileIconButton({
    Key? key,
    required void Function()? onPressed,
  })  : _onPressed = onPressed,
        super(key: key);

  final void Function()? _onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.chevron_right, color: AppColors.mainColor),
      onPressed: _onPressed,
    );
  }
}
