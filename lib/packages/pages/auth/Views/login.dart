import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/ProgressIndicator/progress_indicator.dart';
import 'package:psut_portal/packages/pages/auth/controllers/login_controller.dart';
import 'package:psut_portal/services/validator/app_validators.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/button/simple_btn.dart';
import 'package:psut_portal/packages/components/space/size_box.dart';
import 'package:psut_portal/packages/pages/auth/Components/field_email.dart';
import 'package:psut_portal/packages/pages/auth/Components/field_pass.dart';
import 'package:psut_portal/packages/pages/auth/Components/forget_pass_text.dart';
import 'package:psut_portal/packages/pages/auth/Components/header_auth.dart';
import 'package:psut_portal/packages/pages/auth/Model/user_auth.dart';

// ignore: must_be_immutable
class PageLogin extends StatelessWidget {
  static const String id = '/PageLogin';
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  static final ModelUserAuth _userAuth = ModelUserAuth();

  PageLogin({Key? key}) : super(key: key);

  var loginController = Get.put(LoginController());

  //* Key Form

  @override
  Widget build(BuildContext context) {
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
                    style: CustomTheme.secondaryTextStyle
                        ?.copyWith(fontSize: 14.sp, color: Colors.grey),
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
                    onValidators: AppValidator.isPass,
                  ),
                  const ForgetPassText(),
                  const SB(height: 20),

                  loginController.isLoading.value
                      ? Center(
                          child: CustomProgressIndicator.progressWidget(),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 80.w),
                          child: SimpleBtn(
                            height: 40.h,
                            onTap: () async {
                              if (_keyForm.currentState?.validate() ?? false) {
                                _keyForm.currentState?.save();
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());

                                loginController.login();
                              }
                            },
                            btnTitle: "Login",
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
