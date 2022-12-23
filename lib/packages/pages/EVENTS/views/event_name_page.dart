import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/cso_event_date_component.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/cso_event_name_and_time.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/event_name_details_card.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:intl/intl.dart';

class EventNamePage extends StatelessWidget {
  static const String id = '/EventNamePage';

  const EventNamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = Get.arguments[0];
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const PopIconButton(color: Colors.white, size: 25),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r),
                    ),
                    child: CachedNetworkImage(
                      height: 200.h,
                      fit: BoxFit.fill,
                      imageUrl: "${ApiLogin.baseUrl}/${s.image}",
                    ),
                  ),
                  ClipRRect(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r),
                    ),
                    child: Baseline(
                      baseline: 180.w,
                      baselineType: TextBaseline.alphabetic,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(25.r),
                            elevation: 7,
                            child: Container(
                              padding: EdgeInsets.all(18.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CsoEventDate(
                                    month: DateFormat('MMM').format(
                                      DateTime.parse(
                                          "${s.startDate} ${s.startTime}"),
                                    ),
                                    day: DateFormat('d').format(
                                      DateTime.parse(
                                          "${s.startDate} ${s.startTime}"),
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  CsoEventNameAndTime(
                                      eventName: s.eventName,
                                      dateTime: "${DateFormat('E').format(
                                        DateTime.parse(
                                            "${s.startDate} ${s.startTime}"),
                                      )} ${s.startDate}"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: CustomTheme.mainTextStyle
                            ?.copyWith(fontSize: 18.sp),
                      ),
                      SizedBox(height: 10.h),
                      Text(s.description),
                      SizedBox(height: 10.h),
                      Column(
                        children: [
                          EventNameDetails(
                            icon: Icons.location_on_outlined,
                            text: "Location",
                            details: s.location,
                          ),
                          EventNameDetails(
                            icon: Icons.access_time,
                            text: "Time",
                            details:
                                "${s.startDate} ${DateFormat('jm').format(DateTime.parse("2022-12-12 ${s.startTime}"))} -  ${s.endDate} ${DateFormat('jm').format(DateTime.parse("2022-12-12 ${s.endTime}"))}",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.w, top: 15.h),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.volunteer_activism,
                                  size: 25.w,
                                  color: AppColors.mainColor,
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "Organizers and sponsors",
                                  style: CustomTheme.mainTextStyle?.copyWith(
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 300.w,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: s.organizers.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin: EdgeInsets.all(10.w),
                                      child: CachedNetworkImage(
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                CircleAvatar(
                                          backgroundImage: imageProvider,
                                          minRadius: 30.r,
                                        ),
                                        width: 70.w,
                                        height: 70.h,
                                        fit: BoxFit.cover,
                                        imageUrl:
                                            "${ApiLogin.baseUrl}/${s.organizers?[index].organizerImage}",
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
