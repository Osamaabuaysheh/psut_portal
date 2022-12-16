import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/button/simple_btn.dart';
import 'package:psut_portal/packages/pages/auth/Views/login.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class PageSplash extends StatelessWidget {
  static const String id = '/PageSplash';
  const PageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Image(
              image: AssetImage("assets/images/wallpaper.jpg"),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 450.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    topRight: Radius.circular(50.r),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(30.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Text(
                          "Welcome to",
                          style: CustomTheme.mainTextStyle
                              ?.copyWith(fontSize: 25.sp),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "PSUT Portal",
                          style: CustomTheme.secondaryTextStyle
                              ?.copyWith(fontSize: 38.sp),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "PSUT portal is an all in one application for PSUT students.\nStudents can view and sign up for upcoming events, navigate through job listings and apply and finally be able to take part in CAS activities hosted by the university.",
                          style: CustomTheme.secondaryTextStyle?.copyWith(
                            fontSize: 14.sp,
                            color: Colors.grey,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 80.w),
                          child: SimpleBtn(
                            height: 40.h,
                            onTap: () {
                              Get.offNamed(PageLogin.id);
                            },
                            btnTitle: "Login",
                            ltr: false,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
