import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/packages/components/Lottie/no_events.dart';
import 'package:psut_portal/packages/pages/ClubPage/controllers/club_controller.dart';
import 'package:psut_portal/packages/pages/ClubPage/views/club_page.dart';
import 'package:psut_portal/packages/pages/EVENTS/controllers/event_controller.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/event_name_page.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class ClubsPage extends StatelessWidget {
  ClubsPage({Key? key}) : super(key: key);

  final EventController controller = Get.find();
  final ClubController clubController = Get.put(ClubController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                heightFactor: 2,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Clubs",
                  style: CustomTheme.mainTextStyle?.copyWith(fontSize: 16.sp),
                ),
              ),
              clubController.clubs.isNotEmpty
                  ? GetX<ClubController>(
                      builder: (controller) => SizedBox(
                        height: 50.h,
                        child: ListView.builder(
                          itemCount: controller.clubs.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            width: 57.w,
                            height: 60.h,
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              border: Border.all(
                                color: AppColors.mainColor,
                                width: 3,
                              ),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  ClubPage.id,
                                  arguments: controller.clubs[index],
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.r),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: CachedNetworkImage(
                                  fit: BoxFit.fill,
                                  imageUrl:
                                      "${ApiLogin.baseUrl}/${controller.clubs[index].clubIconImage}",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : const Text("No Clubs"),
              Align(
                heightFactor: 3,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Events",
                  style: CustomTheme.mainTextStyle?.copyWith(fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 350.h,
                child: controller.clubEvents.isNotEmpty
                    ? GetX<EventController>(
                        builder: (controller) => ListView.builder(
                          itemCount: controller.clubEvents.length,
                          itemBuilder: (context, index) => SizedBox(
                            height: 215.h,
                            child: InkWell(
                              onTap: () => Get.toNamed(
                                EventNamePage.id,
                                arguments: [controller.clubEvents[index]],
                              ),
                              child: EventCardMain(
                                eventName:
                                    controller.clubEvents[index].eventName!,
                                assetName: controller.clubEvents[index].image!,
                                location:
                                    controller.clubEvents[index].location!,
                                startTime:
                                    controller.clubEvents[index].startTime!,
                                endTime: controller.clubEvents[index].endTime!,
                              ),
                            ),
                          ),
                        ),
                      )
                    : const Center(
                        child: NoEventsLottie(),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
