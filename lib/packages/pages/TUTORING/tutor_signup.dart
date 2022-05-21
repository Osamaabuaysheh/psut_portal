import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/open_notifications_page_icon_button.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class TutorSignUp extends StatelessWidget {
  const TutorSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSimple(
        actions: [OpenNotificationPageIconButton(), OpenDrawerIconButton()],
      ),
      body: Form(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tutor Sign Up',
                        style: CustomTheme.bigTitle,
                      ),
                      Text(
                        "Please provide the following information\nregarding the subject you wish to tutor.",
                        style:
                            CustomTheme.normalBlue?.copyWith(fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
              ),
              const TutorTextField(
                name: 'Course ID',
              ),
              const TutorTextField(
                name: 'Semester of Completion',
              ),
              const TutorTextField(
                name: 'Grade',
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 238.w,
                  height: 52.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: AppColors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        textStyle: CustomTheme.bigTitle?.copyWith(
                            color: AppColors.white, fontSize: 24.sp)),
                    child: const Text('Submit'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TutorTextField extends StatelessWidget {
  const TutorTextField({
    final String name = '',
    Key? key,
  })  : _name = name,
        super(key: key);
  final String _name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 7.sp),
          child: Text(
            _name,
            style: CustomTheme.bigTitle?.copyWith(fontSize: 20.sp),
          ),
        ),
        Container(
          width: 338.w,
          height: 54.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: AppColors.blue, width: 2.w)),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.sp),
                border: InputBorder.none,
                //floatingLabelStyle: CustomTheme.bigTitle?.copyWith(fontSize: 20.sp),
                hintText: _name,
                floatingLabelAlignment: FloatingLabelAlignment.start),
          ),
        ),
      ],
    );
  }
}
