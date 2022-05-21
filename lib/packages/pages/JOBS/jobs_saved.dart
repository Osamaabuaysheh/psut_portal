import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'jobs_cards.dart';

class JobsSaved extends StatelessWidget {
  const JobsSaved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.amber,
      width: 315.w,
      height: 97.h,
      child: ListView.builder(
        itemBuilder: (context, index) => const JobsCard(),
        itemCount: 3,
      ),
    );
  }
}
