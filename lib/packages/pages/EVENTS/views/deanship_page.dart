import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/components/Lottie/no_events.dart';
import 'package:psut_portal/packages/pages/EVENTS/controllers/event_controller.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';

class DeanshipPage extends StatelessWidget {
  const DeanshipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EventController controller = Get.find();

    return Padding(
      padding: EdgeInsets.all(10.w),
      child: SizedBox(
        child: controller.deanEvents.isNotEmpty
            ? GetX<EventController>(
                builder: (controller) => ListView.builder(
                  itemCount: controller.deanEvents.length,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 5.h),
                    child: SizedBox(
                      height: 215.h,
                      child: EventCardMain(
                        eventName: controller.deanEvents[index].eventName!,
                        assetName: controller.deanEvents[index].image!,
                        location: controller.deanEvents[index].location!,
                        startTime: controller.deanEvents[index].startTime!,
                        endTime: controller.deanEvents[index].endTime!,
                      ),
                    ),
                  ),
                ),
              )
            : const Center(
                child: NoEventsLottie(),
              ),
      ),
    );
  }
}
