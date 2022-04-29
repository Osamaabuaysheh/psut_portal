import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/cso_event_date_component.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/cso_event_name_and_time.dart';
import 'package:psut_portal/themes/app_colors.dart';

class CsoEventComponent extends StatelessWidget {
  const CsoEventComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40.r),
        bottomRight: Radius.circular(40.r),
      ),
      child: Baseline(
        baseline: 180.w,
        baselineType: TextBaseline.alphabetic,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Material(
              borderRadius: BorderRadius.circular(25.r),
              elevation: 7,
              child: Container(
                padding: EdgeInsets.all(18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CsoEventDate(),
                    const CsoEventNameAndTime(),
                    Icon(
                      Icons.notifications_none_sharp,
                      size: 40,
                      color: AppColors.mainColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
