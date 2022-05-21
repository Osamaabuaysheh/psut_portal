import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/TUTORING/tutors_busi.dart';
import 'package:psut_portal/packages/pages/TUTORING/tutors_eng.dart';
import 'package:psut_portal/packages/pages/TUTORING/tutors_it.dart';
import 'package:psut_portal/packages/pages/TUTORING/tutors_sciences.dart';

class TutorTabBar extends StatelessWidget {
  const TutorTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        TutorsIt(),
        TutorsEng(),
        TutorsBusi(),
        TutorsSciences(),
      ],
    );
  }
}
