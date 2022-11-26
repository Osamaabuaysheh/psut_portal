import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/EVENTS/controllers/event_controller.dart';
import 'package:psut_portal/packages/pages/EVENTS/models/event.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/event_name_page.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';

class EventCard extends StatelessWidget {
  EventCard({
    Key? key,
    required final Widget titleWidget,
    Axis scrollDirection = Axis.horizontal,
  })  : _titleWidget = titleWidget,
        _scrollDirection = scrollDirection,
        super(key: key);
  final Widget _titleWidget;
  final Axis _scrollDirection;
  final List<Event> lastEvents = [];
  final EventController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    for (var element in controller.allEvents) {
      var dateRecived = DateTime.parse("${element.startDate}");
      if (DateTime.now().isBefore(dateRecived) &&
          !lastEvents.length.isEqual(10)) {
        lastEvents.add(element);
      }
    }

    return SizedBox(
      width: double.infinity,
      height: 245.h,
      child: Column(
        children: [
          Expanded(child: _titleWidget),
          Expanded(
            child: ListView.builder(
              scrollDirection: _scrollDirection,
              itemCount: lastEvents.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Get.toNamed(
                  EventNamePage.id,
                  arguments: [
                    lastEvents[index],
                  ],
                ),
                child: EventCardMain(
                  eventName: lastEvents[index].eventName!,
                  assetName: "${lastEvents[index].image}",
                  location: lastEvents[index].location!,
                  startTime: lastEvents[index].startTime!,
                  endTime: lastEvents[index].endTime!,
                ),
              ),
            ),
            flex: 6,
          ),
        ],
      ),
    );
  }
}
