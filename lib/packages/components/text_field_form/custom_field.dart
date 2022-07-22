import 'package:flutter/material.dart';
import 'package:psut_portal/themes/app_colors.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {Key? key,
      String? initValue,
      Color? cursorColor = Colors.greenAccent,
      TextInputType? keyboardType,
      bool obscureText = false,
      String? hint,
      Widget? prefixIcon,
      Widget? label,
      String? labelText,
      String? helperText,
      Widget? suffixIcon,
      final String? Function(String?)? onvalidator,
      final void Function(String?)? onsaved,
      final void Function(String)? onChanged})
      : _initValue = initValue,
        _cursorColor = cursorColor,
        _keyboardType = keyboardType,
        _obscureText = obscureText,
        _hint = hint,
        _prefixIcon = prefixIcon,
        _label = label,
        _labelText = labelText,
        _helperText = helperText,
        _suffixIcon = suffixIcon,
        _onvalidator = onvalidator,
        _onSaved = onsaved,
        _onChanged = onChanged,
        super(key: key);

  final String? _initValue;
  final Color? _cursorColor;
  final TextInputType? _keyboardType;
  final bool _obscureText;
  final Widget? _prefixIcon;
  //* Input Decoration
  final String? _hint;
  final Widget? _label;
  final String? _labelText;
  final String? _helperText;
  final Widget? _suffixIcon;
  final String? Function(String?)? _onvalidator;
  final void Function(String?)? _onSaved;
  final void Function(String)? _onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: _initValue,
      cursorColor: _cursorColor,
      keyboardType: _keyboardType,
      obscureText: _obscureText,
      validator: _onvalidator,
      onSaved: _onSaved,
      onChanged: _onChanged,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: _hint,
        label: _label,
        labelText: _labelText,
        helperText: _helperText,
        prefixIcon: _prefixIcon,
        suffixIcon: _suffixIcon,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.mainColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.mainColor),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.ceriseRed),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.ceriseRed),
        ),
      ),
    );
  }
}
