import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/Lottie/no_events.dart';
import 'package:psut_portal/packages/pages/EVENTS/controllers/event_controller.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/event_name_page.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';

class AllEventsPage extends StatelessWidget {
  AllEventsPage({Key? key}) : super(key: key);

  final controller = Get.put(EventController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: controller.allEvents.isNotEmpty
          ? GetX<EventController>(
              builder: (controller) => ListView.builder(
                itemCount: controller.allEvents.length,
                itemBuilder: (context, index) => SizedBox(
                  height: 215.h,
                  child: InkWell(
                    onTap: () => Get.toNamed(
                      EventNamePage.id,
                      arguments: [controller.allEvents[index]],
                    ),
                    child: EventCardMain(
                      eventName: controller.allEvents[index].eventName!,
                      assetName: controller.allEvents[index].image!,
                      location: controller.allEvents[index].location!,
                      startTime: controller.allEvents[index].startTime!,
                      endTime: controller.allEvents[index].endTime!,
                    ),
                  ),
                ),
              ),
            )
          : const NoEventsLottie(),
    );
  }
}

