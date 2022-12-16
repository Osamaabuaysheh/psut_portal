import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/auth/Views/forget.dart';
import 'package:psut_portal/services/themes/theme_status.dart';

class ForgetPassText extends StatelessWidget {
  const ForgetPassText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, PageForget.id),
      child: Text(
        "Forget Password",
        style: AppTheme.b1(context)
            .copyWith(decoration: TextDecoration.underline),
      ),
    );
  }
}
