import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/text_field_form/custom_field.dart';
import 'package:psut_portal/services/validator/app_validators.dart';

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
      hint: "20190138",
      keyboardType: TextInputType.emailAddress,
      onvalidator: AppValidator.isEmail,
      onsaved: _onsaved,
    );
  }
}
