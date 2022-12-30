import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/RequestCourse/Components/request_course_body.dart';
import 'package:psut_portal/themes/app_colors.dart';

class RequestCoursePage extends StatelessWidget {
  const RequestCoursePage({Key? key}) : super(key: key);
  static const id = "/RequestCoursePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const AppBarSimple(
        actions: [
          PopIconButton(),
        ],
      ),
      body: const RequsetCoursePageBody(),
    );
  }
}
