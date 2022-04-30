import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/notifications/components/notification_card.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class NotifcationsPageBody extends StatelessWidget {
  const NotifcationsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Notifications",
            style: CustomTheme.mainTextStyle?.copyWith(fontSize: 26.sp),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (ctx, index) => const NotificationCard(
                  title: "Job Offer Expiring soon",
                  description:
                      "Amazon Product Designer job expires tomorrow. Apply Now",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
