import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/language/generated/key_lang.dart';
import 'package:psut_portal/packages/components/text_field_form/custom_field.dart';
import 'package:psut_portal/services/validator/app_validators.dart';
import 'package:psut_portal/utils/path_icons.dart';

class FieldEmail extends StatelessWidget {
  const FieldEmail({
    Key? key,
    required void Function(String? value)? onsaved,
  })  : _onsaved = onsaved,
        super(key: key);
  final void Function(String? value)? _onsaved;

  @override
  Widget build(BuildContext context) {
    return CustomField(
      hint: KeyLang.email,
      keyboardType: TextInputType.emailAddress,
      prefixIcon: Padding(
        padding: EdgeInsets.all(10.0.h),
        child: PathIcons.emailIcon,
      ),
      onvalidator: AppValidator.isEmail,
      onsaved: _onsaved,
    );
  }
}
