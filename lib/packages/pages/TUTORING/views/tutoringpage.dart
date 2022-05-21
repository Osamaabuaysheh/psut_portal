import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/open_notifications_page_icon_button.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';
import 'package:psut_portal/packages/components/search_jobs.dart';
import 'package:psut_portal/packages/pages/TUTORING/components/tutoring_body.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:psut_portal/utils/path_image.dart';

class TUTROPAGE extends StatelessWidget {
  const TUTROPAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarSimple(
          title: "",
          actions: const [
            OpenNotificationPageIconButton(),
            OpenDrawerIconButton(),
          ],
          bottomsize: 140.w,
          bottomWidget: PreferredSize(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    width: 342.w,
                    child: TabBar(
                      indicatorColor: Colors.transparent,
                      unselectedLabelStyle: CustomTheme.normalBlue,
                      tabs: [
                        //TODO IT
                        Column(
                          children: [
                            SizedBox(
                              width: 55.w,
                              height: 55.h,
                              child: const Image(
                                image: (AssetImage(PathImage.itLogo)),
                              ),
                            ),
                            Text(
                              'IT',
                              style: CustomTheme.normalBlue?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 10.sp),
                            )
                          ],
                        ),
                        //TODO ENG
                        Column(
                          children: [
                            SizedBox(
                              width: 55.w,
                              height: 55.h,
                              child: const Image(
                                image: (AssetImage(
                                  PathImage.engLogo,
                                )),
                              ),
                            ),
                            Text(
                              'Engineering',
                              style: CustomTheme.normalBlue?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 10.sp),
                            )
                          ],
                        ),
                        //TODO BUSI
                        Column(
                          children: [
                            SizedBox(
                              width: 55.w,
                              height: 55.h,
                              child: const Image(
                                image: (AssetImage(PathImage.busiLogo)),
                              ),
                            ),
                            Text(
                              'Business',
                              style: CustomTheme.normalBlue?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 10.sp),
                            )
                          ],
                        ),
                        //TODO SCIENCES
                        Column(
                          children: [
                            SizedBox(
                              width: 55.w,
                              height: 55.h,
                              child: const Image(
                                image: (AssetImage(
                                  PathImage.sciencesLogo,
                                )),
                              ),
                            ),
                            Text(
                              'Sciences',
                              style: CustomTheme.normalBlue?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 10.sp),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  width: 324.w,
                  height: 80,
                  child: const CustomSearch(),
                ),
              ],
            ),
            preferredSize: const Size.fromHeight(0),
          ),
        ),
        body: const TutoringBody(),
        endDrawer: const BodyDrawer(),
      ),
    );
  }
}
