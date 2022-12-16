import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/TUTORING/Models/session.dart';
import 'package:psut_portal/packages/pages/TUTORING/tutor_profile.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class SubjectCards extends StatelessWidget {
  const SubjectCards({
    Key? key,
    required courseTitle,
    required courseNum,
    required courseTutor,
    required List<Sessions> sessions,
  })  : _courseTitle = courseTitle,
        _courseNum = courseNum,
        _courseTutor = courseTutor,
        _sessions = sessions,
        super(key: key);

  final String _courseTitle;
  final String _courseNum;
  final String _courseTutor;
  final List<Sessions> _sessions;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 324.w,
        height: 95.h,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(23.r)),
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListTile(
              title: Text(
                '$_courseNum $_courseTitle',
                style: CustomTheme.subjectCardTitle,
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.w),
                child: Text('Tutor: $_courseTutor',
                    style: CustomTheme.normalBlue?.copyWith(fontSize: 16.sp)),
              ),
              onTap: () {
                Get.toNamed(TutorProfile.id, arguments: {
                  "CourseTitle": _courseTitle,
                  "courseNum": _courseNum,
                  "courseTutor": _courseTutor,
                  "Sessions": _sessions
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
