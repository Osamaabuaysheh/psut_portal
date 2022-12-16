import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/CSO_Card/cso_card.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card.dart';
import 'package:psut_portal/packages/pages/Home/components/custom_home_card_title.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Jobs_Card/job_card.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomHomeCardTitle(
                cardName: "Events",
              ),
              const EventCard(),
              const CustomHomeCardTitle(
                cardName: "Jobs",
              ),
              JobCard(),
              const CustomHomeCardTitle(
                cardName: "Community Service",
              ),
              const CSOCard(),
            ],
          ),
        ),
      ),
    );
  }
}
