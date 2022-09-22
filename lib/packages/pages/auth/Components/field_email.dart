import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/text_field_form/custom_field.dart';
import 'package:psut_portal/packages/pages/auth/controllers/login_controller.dart';

class FieldEmail extends StatelessWidget {
  FieldEmail({
    Key? key,
    required void Function(String? value)? valueEmail,
  })  : _valueEmail = valueEmail,
        super(key: key);
  final void Function(String? value)? _valueEmail;

  final _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return CustomField(
      controller: _loginController.emailController,
      hint: "20190138",
      keyboardType: TextInputType.emailAddress,
      // onvalidator: AppValidator.isEmail,
      onsaved: _valueEmail,
    );
  }
}
