import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:psut_portal/packages/pages/TUTORING/Controllers/courses_controller.dart';
import 'package:psut_portal/packages/pages/TUTORING/subject_cards.dart';
import 'package:get/get.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CustomTutorListTile extends StatelessWidget {
  const CustomTutorListTile({
    Key? key,
    required String college,
  })  : _college = college,
        super(key: key);
  final String _college;

  @override
  Widget build(BuildContext context) {
    final CourseController controller = Get.find();

    bool check() {
      bool flag = false;
      for (var element in controller.displayAllCourses) {
        if (element.college == _college) {
          flag = true;
        }
      }
      return flag;
    }

    return check()
        ? SizedBox(
            width: 315.w,
            height: 97.h,
            child: GetX<CourseController>(
              builder: (controller) => controller.displayAllCourses.isEmpty
                  ? Center(
                      child: Text(
                        "No Results",
                        style: CustomTheme.mainTextStyle
                            ?.copyWith(fontSize: 18.sp),
                      ),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) =>
                          controller.displayAllCourses[index].college ==
                                  _college
                              ? SubjectCards(
                                  courseTitle: controller
                                          .displayAllCourses[index]
                                          .courseName ??
                                      "",
                                  courseNum: controller
                                      .displayAllCourses[index].courseId
                                      .toString(),
                                  courseTutor: controller
                                      .displayAllCourses[index]
                                      .tutor
                                      ?.tutorName,
                                  sessions: controller
                                          .displayAllCourses[index].sessions ??
                                      [],
                                )
                              : Container(),
                      itemCount: controller.displayAllCourses.length,
                    ),
            ),
          )
        : Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 300.w,
                      child:
                          LottieBuilder.asset('assets/Lottie/classRoom.json')),
                  Text(
                    "No Courses For This Section Right Now",
                    style: CustomTheme.mainTextStyle
                        ?.copyWith(fontSize: 16.sp, color: AppColors.mainColor),
                  ),
                ],
              ),
            ),
          );
  }
}
