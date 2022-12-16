import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/button/simple_btn.dart';
import 'package:psut_portal/packages/components/space/size_box.dart';
import 'package:psut_portal/packages/pages/auth/Components/field_pass.dart';
import 'package:psut_portal/packages/pages/auth/Components/header_auth.dart';
import 'package:psut_portal/packages/pages/auth/Components/rich_text_auth.dart';
import 'package:psut_portal/packages/pages/auth/Model/user_auth.dart';
import 'package:psut_portal/services/themes/theme_status.dart';

class PageForget extends StatelessWidget {
  static const String id = '/PageForget';

  const PageForget({Key? key}) : super(key: key);

  static final ModelUserAuth _userAuth = ModelUserAuth();

  static final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            child: Form(
              key: _keyForm,
              child: Column(
                children: [
                  const HeaderAuth(),
                  Text(
                    "Reset Password",
                    textAlign: TextAlign.start,
                    style: AppTheme.b1(context),
                  ),
                  const SB(height: 20),
                  FieldPass(valuePass: _userAuth.setEmail),
                  const SB(height: 20),
                  SimpleBtn(
                    btnTitle: "Reset Password",
                    onTap: () {
                      if (_keyForm.currentState?.validate() ?? false) {
                        _keyForm.currentState?.save();
                      }
                    },
                    ltr: false,
                  ),
                  const SB(height: 20),
                  RichTextAuth(
                    fword: "Already Have Account",
                    sword: "Login",
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
