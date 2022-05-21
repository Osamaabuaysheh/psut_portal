import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/language/generated/key_lang.dart';
import 'package:psut_portal/packages/components/button/simple_btn.dart';
import 'package:psut_portal/packages/components/space/size_box.dart';
import 'package:psut_portal/packages/pages/auth/Components/field_email.dart';
import 'package:psut_portal/packages/pages/auth/Components/field_pass.dart';
import 'package:psut_portal/packages/pages/auth/Components/header_auth.dart';
import 'package:psut_portal/packages/pages/auth/Components/rich_text_auth.dart';
import 'package:psut_portal/packages/pages/auth/Model/user_auth.dart';
import 'package:psut_portal/services/validator/app_validators.dart';

class PageRegister extends StatelessWidget {
  static const String id = 'PageRegister';
  static String? pass;
  const PageRegister({Key? key}) : super(key: key);

  static final ModelUserAuth _userAuth = ModelUserAuth();
  static final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          child: Form(
            key: _keyForm,
            child: Column(
              children: [
                const HeaderAuth(),
                //* Email
                FieldEmail(valueEmail: _userAuth.setPassword),
                //* Password
                const SB(height: 10),
                FieldPass(onChanged: (val) => pass = val),
                const SB(height: 20),
                //* Confirm Password
                FieldPass(
                  valuePass: (val) => _userAuth.setPassword(val),
                  hint: KeyLang.confirmPass,
                  onValidators: (value) =>
                      AppValidator.isEqualPass(value, pass ?? ''),
                ),

                const SB(height: 20),
                SimpleBtn(
                  onTap: () {
                    if (_keyForm.currentState?.validate() ?? false) {
                      _keyForm.currentState?.save();
                    }
                  },
                  btnTitle: KeyLang.login,
                  ltr: false,
                ),
                const SB(height: 20),
                RichTextAuth(
                  fword: KeyLang.haveAccount,
                  sword: KeyLang.login,
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
