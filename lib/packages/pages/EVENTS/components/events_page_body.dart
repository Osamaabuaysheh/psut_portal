import 'package:flutter/material.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/all_events_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/clubs_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/deanship_page.dart';

class EventsPageBody extends StatelessWidget {
  const EventsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        AllEventsPage(),
        const DeanshipPage(),
        ClubsPage(),
      ],
    );
  }
}
