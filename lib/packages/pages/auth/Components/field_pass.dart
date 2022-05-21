import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:psut_portal/language/generated/key_lang.dart';
import 'package:psut_portal/packages/components/text_field_form/custom_field.dart';
import 'package:psut_portal/services/validator/app_validators.dart';
import 'package:psut_portal/utils/path_icons.dart';

class FieldPass extends StatefulWidget {
  const FieldPass({
    Key? key,
    final void Function(String? value)? valuePass,
    final String? Function(String?)? onValidators = AppValidator.isPass,
    final void Function(String)? onChanged,
    String hint = KeyLang.pass,
  })  : _valuePass = valuePass,
        _onValidators = onValidators,
        _onChanged = onChanged,
        _hint = hint,
        super(key: key);

  @override
  _FieldPassState createState() => _FieldPassState();
  final void Function(String? value)? _valuePass;
  final String? Function(String?)? _onValidators;
  final String _hint;
  final void Function(String)? _onChanged;
}

class _FieldPassState extends State<FieldPass> {
  bool _obsecureText = true;
  FaIcon _iconSuffix = PathIcons.eyeIcon;
  @override
  Widget build(BuildContext context) {
    return CustomField(
      hint: widget._hint,
      keyboardType: TextInputType.emailAddress,
      obscureText: _obsecureText,
      suffixIcon: Padding(
        padding: EdgeInsets.all(10.0.h),
        child: InkWell(
          borderRadius: BorderRadius.circular(40.r),
          child: _iconSuffix,
          onTap: () => _viewPass(),
        ),
      ),
      onsaved: widget._valuePass,
      onvalidator: widget._onValidators,
      onChanged: widget._onChanged,
    );
  }

  void _viewPass() {
    setState(() {
      if (_obsecureText) {
        _iconSuffix = PathIcons.eyeSlashIcon;
        _obsecureText = false;
      } else {
        _iconSuffix = PathIcons.eyeIcon;
        _obsecureText = true;
      }
    });
  }
}
