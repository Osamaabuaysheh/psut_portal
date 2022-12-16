import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/Lottie/no_events.dart';
import 'package:psut_portal/packages/pages/CSO/Models/cso_event.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_upcoming_previous_card.dart';
import 'package:psut_portal/packages/pages/CSO/controllers/cso_events_controller.dart';

class CsoPreviousPage extends StatelessWidget {
  CsoPreviousPage({Key? key}) : super(key: key);
  final controller = Get.put(CSOEventsController());
  final List<CSOEvent> previousEvents = [];

  @override
  Widget build(BuildContext context) {
    previousEvents.clear();
    for (var element in controller.csoEvents) {
      var dateRecived = DateTime.parse("${element.startDate}");
      if (DateTime.now().isAfter(dateRecived)) {
        previousEvents.add(element);
      }
    }
    return previousEvents.isNotEmpty
        ? RefreshIndicator(
            onRefresh: controller.getEvent,
            child: ListView.builder(
              itemCount: previousEvents.length,
              itemBuilder: (context, index) => CustomUpcomingPreviousCard(
                title: previousEvents[index].eventName!,
                subtitle: previousEvents[index].description!,
                date: previousEvents[index].startDate!,
                location: previousEvents[index].location!,
                time: previousEvents[index].startTime!,
              ),
            ),
          )
        : const Center(
            child: NoEventsLottie(),
          );
  }
}
