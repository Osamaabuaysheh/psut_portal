import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/TUTORING/subject_cards.dart';

class TutorsEng extends StatelessWidget {
  const TutorsEng({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315.w,
      height: 97.h,
      child: ListView.builder(
        itemBuilder: (context, index) => const SubjectCards(),
        itemCount: 10,
      ),
    );
  }
}
