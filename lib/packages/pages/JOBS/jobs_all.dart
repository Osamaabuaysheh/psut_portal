import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'jobs_cards.dart';

class JobsAll extends StatelessWidget {
  const JobsAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315.w,
      height: 97.h,
      child: ListView.builder(
        itemBuilder: (context, index) => const JobsCard(),
        itemCount: 10,
      ),
    );
  }
}
