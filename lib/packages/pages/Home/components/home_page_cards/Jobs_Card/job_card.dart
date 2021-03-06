import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Jobs_Card/job_card_main.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
    required final Widget titleWidget,
  })  : _titleWidget = titleWidget,
        super(key: key);
  final Widget _titleWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 140.h,
      child: Column(
        children: [
          _titleWidget,
          SizedBox(
            width: 350.w,
            height: 90.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => const JobCardMain(),
            ),
          ),
        ],
      ),
    );
  }
}
