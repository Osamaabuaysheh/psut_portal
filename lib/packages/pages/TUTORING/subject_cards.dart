import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/TUTORING/tutor_profile.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class SubjectCards extends StatelessWidget {
  const SubjectCards({Key? key}) : super(key: key);

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
                '20141 Physics 1',
                style: CustomTheme.subjectCardTitle,
              ),
              subtitle:
                  Text('Tutor: Yara Al Sadeeq', style: CustomTheme.normalBlue),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TutorProfile(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
