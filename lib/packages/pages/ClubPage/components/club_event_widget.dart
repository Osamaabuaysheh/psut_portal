import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/EVENTS/controllers/event_controller.dart';
import 'package:psut_portal/packages/pages/EVENTS/models/event.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/event_name_page.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';

class ClubEventWidget extends StatelessWidget {
  ClubEventWidget({Key? key, required final String clubName})
      : _clubName = clubName,
        super(key: key);

  final String _clubName;
  final List<Event> eventsClub = [];

  @override
  Widget build(BuildContext context) {
    final EventController controller = Get.find();

    for (var element in controller.clubEvents) {
      debugPrint("Element:" + element.clubName.toString());
      debugPrint(_clubName.toString());
      element.clubName.toString() == _clubName.toString()
          ? eventsClub.add(element)
          : null;
    }

    return eventsClub.isNotEmpty
        ? ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: eventsClub.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () => Get.toNamed(
                EventNamePage.id,
                arguments: [
                  eventsClub[index],
                ],
              ),
              child: EventCardMain(
                eventName: eventsClub[index].eventName!,
                assetName: "${eventsClub[index].image}",
                location: eventsClub[index].location!,
                startTime: eventsClub[index].startTime!,
                endTime: eventsClub[index].endTime!,
              ),
            ),
          )
        : const Center(child: Text("NO Events"));
  }
}
