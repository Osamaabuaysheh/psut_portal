import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/CSO/components/bottom_upcoming_previous_card.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_upcoming_previous_card.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_event_name_page.dart';

class CsoUpcomingPage extends StatelessWidget {
  const CsoUpcomingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => CustomUpcomingPreviousCard(
        title: "Cancer Awareness Lecture",
        subtitle: "on the occasion of cancer awareness month",
        date: "Date And Time",
        location: "Location",
        time: "Time",
        bottomRowWidget: BottomUpcomingPreviousCard(
          moreDetailFunc: () =>
              Navigator.pushNamed(context, CsoEventNamePage.id),
          signUpDetailFunc: () {},
        ),
      ),
    );
  }
}
