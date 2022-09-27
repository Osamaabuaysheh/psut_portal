import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:psut_portal/packages/components/app-bar/components/pop_icon_button.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/cso_event_component.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/event_name_details_card.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class EventNamePage extends StatelessWidget {
  static const String id = 'EventNamePage';
  const EventNamePage({
    Key? key,
    final List<SvgPicture>? icons,
  })  : _sponsors = icons,
        super(key: key);

  final List<SvgPicture>? _sponsors;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const PopIconButton(
            color: Colors.white,
            size: 25,
          ),
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
                    child: const Image(
                      width: double.infinity,
                      image: AssetImage(
                        "assets/images/Image 5.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  const CsoEventComponent(),
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
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and.",
                      ),
                      SizedBox(height: 10.h),
                      Column(
                        children: [
                          const EventNameDetails(
                            icon: Icons.location_on_outlined,
                            text: "Location",
                            details: "Lorem Ipsum is simply dummy text",
                          ),
                          const EventNameDetails(
                            icon: Icons.access_time,
                            text: "Time",
                            details: "20-03-2022 (08:30) -  20-03-2022 (10:30)",
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
                                  itemCount: _sponsors?.length ?? 1,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin: EdgeInsets.all(10.w),
                                      width: 50.w,
                                      height: 50.h,
                                      child: _sponsors?[index],
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
