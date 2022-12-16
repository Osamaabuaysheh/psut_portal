import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/CSO/Models/cso_event.dart';
import 'package:psut_portal/packages/pages/CSO/components/bottom_upcoming_previous_card.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_upcoming_previous_card.dart';
import 'package:psut_portal/packages/pages/CSO/controllers/cso_events_controller.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_event_name_page.dart';

class CsoUpcomingPage extends StatelessWidget {
  CsoUpcomingPage({Key? key}) : super(key: key);
  final CSOEventsController controller = Get.find();
  final List<CSOEvent> upcomingEvents = [];

  @override
  Widget build(BuildContext context) {
    upcomingEvents.clear();
    for (var element in controller.csoEvents) {
      var dateRecived = DateTime.parse("${element.startDate}");
      if (DateTime.now().isBefore(dateRecived)) {
        upcomingEvents.add(element);
      }
    }
    return upcomingEvents.isNotEmpty
        ? RefreshIndicator(
            onRefresh: controller.getEvent,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: upcomingEvents.length,
              itemBuilder: (context, index) => CustomUpcomingPreviousCard(
                title: upcomingEvents[index].eventName!,
                subtitle: upcomingEvents[index].description!,
                date: upcomingEvents[index].startDate!,
                location: upcomingEvents[index].location!,
                time: upcomingEvents[index].startTime!,
                bottomRowWidget: BottomUpcomingPreviousCard(
                  moreDetailFunc: () {
                    Get.toNamed(CsoEventNamePage.id,
                        arguments: [upcomingEvents[index]]);
                  },
                  signUpDetailFunc: () {},
                ),
              ),
            ),
          )
        : const Center(child: Text("No Events"));
  }
}
