import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/api/login_api.dart';
import 'package:psut_portal/packages/pages/EVENTS/controllers/event_controller.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/event_name_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/events_page.dart';
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

  final EventController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 245.h,
      child: Column(
        children: [
          Expanded(child: _titleWidget),
          Expanded(
            child: GetX<EventController>(
              builder: (controller) => ListView.builder(
                scrollDirection: _scrollDirection,
                itemCount: controller.events.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () => Get.toNamed(EventNamePage.id),
                  child: EventCardMain(
                    eventName: controller.events[index].eventName!,
                    assetName: "${controller.events[index].image}",
                    location: controller.events[index].location!,
                    startTime: controller.events[index].startTime!,
                    endTime: controller.events[index].endTime!,
                  ),
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
