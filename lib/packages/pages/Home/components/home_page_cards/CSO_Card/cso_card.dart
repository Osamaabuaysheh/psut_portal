import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_upcoming_previous_card.dart';
import 'package:psut_portal/packages/pages/CSO/controllers/cso_events_controller.dart';
import 'package:psut_portal/packages/pages/CSO/views/cso_event_name_page.dart';

class CSOCard extends StatelessWidget {
  const CSOCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 240.h,
      child: GetX<CSOEventsController>(
        builder: (controller) => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:
              controller.csoEvents.length < 5 ? controller.csoEvents.length : 5,
          itemBuilder: (context, index) => InkWell(
            onTap: () => Get.toNamed(
              CsoEventNamePage.id,
              arguments: [
                controller.csoEvents[index],
              ],
            ),
            child: CustomUpcomingPreviousCard(
              title: controller.csoEvents[index].eventName!,
              subtitle: controller.csoEvents[index].description!,
              date: controller.csoEvents[index].startDate!,
              location: controller.csoEvents[index].location!,
              time: controller.csoEvents[index].startTime!,
            ),
          ),
        ),
      ),
    );
  }
}
