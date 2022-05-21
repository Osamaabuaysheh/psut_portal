import 'package:flutter/material.dart';
import 'package:psut_portal/language/generated/key_lang.dart';
import 'package:psut_portal/packages/pages/auth/Views/forget.dart';
import 'package:psut_portal/services/language/language_status.dart';
import 'package:psut_portal/services/themes/theme_status.dart';

class ForgetPassText extends StatelessWidget {
  const ForgetPassText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
          AppLang.isAr(context) ? Alignment.centerLeft : Alignment.centerRight,
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, PageForget.id),
        child: Text(
          KeyLang.forgotPass,
          style: AppTheme.b1(context)
              .copyWith(decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
