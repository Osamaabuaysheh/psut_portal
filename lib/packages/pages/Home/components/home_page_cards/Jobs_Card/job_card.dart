import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Jobs_Card/job_card_main.dart';
import 'package:psut_portal/packages/pages/JOBS/job_description.dart';

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
      height: 130.h,
      child: Column(
        children: [
          Expanded(child: _titleWidget),
          Expanded(
            flex: 3,
            child: SizedBox(
              height: 100.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => InkWell(
                  child: const JobCardMain(),
                  onTap: () => Get.toNamed(JobDesc.id),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
