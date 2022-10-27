import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/EVENTS/controllers/event_controller.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/event_name_page.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';
import 'package:psut_portal/utils/svg_images.dart';

class AllEventsPage extends StatelessWidget {
  AllEventsPage({Key? key}) : super(key: key);

  var controller = Get.put(EventController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: GetX<EventController>(
        builder: (controller) => ListView.builder(
          itemCount: controller.events.length,
          itemBuilder: (context, index) => SizedBox(
            height: 215.h,
            child: InkWell(
              onTap: () => Get.toNamed(
                EventNamePage.id,
                arguments: [controller.events[index]],
              ),
              child: EventCardMain(
                eventName: controller.events[index].eventName!,
                assetName: controller.events[index].image!,
                location: controller.events[index].location!,
                startTime: controller.events[index].startTime!,
                endTime: controller.events[index].endTime!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
