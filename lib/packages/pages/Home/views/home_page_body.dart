import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/CSO/cso_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/events_page.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/CSO_Card/cso_card.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card.dart';
import 'package:psut_portal/packages/pages/Home/components/custom_home_card_title.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Jobs_Card/job_card.dart';
import 'package:psut_portal/packages/pages/JOBS/views/jobs_page.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              EventCard(
                titleWidget: CustomHomeCardTitle(
                  cardName: "Events",
                  onPressed: () => Navigator.pushNamed(context, EventsPage.id),
                ),
              ),
              SizedBox(height: 20.h),
              JobCard(
                titleWidget: CustomHomeCardTitle(
                  cardName: "Jobs",
                  onPressed: () => Navigator.pushNamed(context, JOBSPage.id),
                ),
              ),
              CSOCard(
                titleWidget: CustomHomeCardTitle(
                  cardName: "Community Service",
                  onPressed: () => Navigator.pushNamed(context, CSOPage.id),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
