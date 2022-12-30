import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/EVENTS/controllers/event_controller.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/event_name_page.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    Axis scrollDirection = Axis.horizontal,
  })  : _scrollDirection = scrollDirection,
        super(key: key);
  final Axis _scrollDirection;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 215.h,
      child: GetX<EventController>(
        builder: (controller) => controller.allEvents.isNotEmpty
            ? ListView.builder(
                scrollDirection: _scrollDirection,
                itemCount: controller.allEvents.length < 5
                    ? controller.allEvents.length
                    : 5,
                itemBuilder: (context, index) => InkWell(
                  onTap: () => Get.toNamed(
                    EventNamePage.id,
                    arguments: [
                      controller.allEvents[index],
                    ],
                  ),
                  child: EventCardMain(
                    eventName: controller.allEvents[index].eventName!,
                    assetName: "${controller.allEvents[index].image}",
                    location: controller.allEvents[index].location!,
                    startTime: controller.allEvents[index].startTime!,
                    endTime: controller.allEvents[index].endTime!,
                  ),
                ),
              )
            : SizedBox(
                height: 100.h,
                child: Center(
                  child: Text("No Events",
                      style:
                          CustomTheme.mainTextStyle?.copyWith(fontSize: 15.sp)),
                ),
              ),
      ),
    );
  }
}
