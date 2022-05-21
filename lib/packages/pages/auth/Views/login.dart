import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/language/generated/key_lang.dart';
import 'package:psut_portal/packages/components/button/simple_btn.dart';
import 'package:psut_portal/packages/components/loading/app_loading.dart';
import 'package:psut_portal/packages/components/loading/enum_loading.dart';
import 'package:psut_portal/packages/components/space/size_box.dart';
import 'package:psut_portal/packages/pages/HomePageController/views/home.dart';
import 'package:psut_portal/packages/pages/auth/Components/field_email.dart';
import 'package:psut_portal/packages/pages/auth/Components/field_pass.dart';
import 'package:psut_portal/packages/pages/auth/Components/forget_pass_text.dart';
import 'package:psut_portal/packages/pages/auth/Components/header_auth.dart';
import 'package:psut_portal/packages/pages/auth/Model/user_auth.dart';
import 'package:psut_portal/packages/pages/auth/manage_state/auth_service.dart';

class PageLogin extends StatelessWidget {
  static const String id = 'PageLogin';
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  static final ModelUserAuth _userAuth = ModelUserAuth();

  PageLogin({Key? key}) : super(key: key);
  //* Key Form

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = Provider.of<AuthService>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          child: Form(
            key: _keyForm,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SB(height: 40.h),
                  HeaderAuth(height: 150.h),
                  Text(
                    "Let's sign you in",
                    style: CustomTheme.mainTextStyle?.copyWith(fontSize: 24.sp),
                  ),
                  SB(height: 5.h),
                  Text(
                    "Sign in using your student ID and password",
                    style: CustomTheme.secondaryTextStyle?.copyWith(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SB(height: 40.h),
                  //* Email
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Student ID", style: CustomTheme.mainTextStyle),
                  ),
                  FieldEmail(
                    valueEmail: (val) => _userAuth.setEmail(val),
                  ),
                  //* Password
                  const SB(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Password", style: CustomTheme.mainTextStyle),
                  ),
                  FieldPass(
                    hint: "**********",
                    valuePass: (val) => _userAuth.setPassword(val),
                  ),
                  const ForgetPassText(),
                  const SB(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80.w),
                    child: _auth.isLoading
                        ? const AppLoading(
                            chooseLoading: ChooseLoading.button,
                          )
                        : SimpleBtn(
                            height: 40.h,
                            onTap: () async {
                              if (_keyForm.currentState?.validate() ?? false) {
                                _keyForm.currentState?.save();
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());

                                User? user = await _auth.login(data: _userAuth);
                                if (user != null) {
                                  Navigator.pushReplacementNamed(
                                      context, MainHomePage.id);
                                }
                              }
                            },
                            btnTitle: KeyLang.login,
                            ltr: false,
                          ),
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
