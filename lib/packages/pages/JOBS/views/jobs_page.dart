import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/components/app-bar/appbar_simple.dart';
import 'package:psut_portal/packages/components/app-bar/components/open_notifications_page_icon_button.dart';
import 'package:psut_portal/packages/components/app-bar/components/oper_drawer_icon_button.dart';
import 'package:psut_portal/packages/components/app_drawer/drawer_home/body_drawer.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/packages/pages/JOBS/components/jobs_body.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class JOBSPage extends StatelessWidget {
  static const String id = 'JOBSPage';

  const JOBSPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarSimple(
          title: "",
          actions: const [
            OpenNotificationPageIconButton(),
            OpenDrawerIconButton(),
          ],
          bottomsize: 120.h,
          bottomWidget: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: SizedBox(
              width: double.infinity,
              //color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ALL JOBS', style: CustomTheme.bigTitle),
                        const CustomSpacing(),
                        Row(
                          children: [
                            SizedBox(
                              width: 250.w,
                              height: 60.h,
                              // child: const CustomSearch(),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.filter),
                            ),
                          ],
                        ),

                        //const Text('SEARCH'),
                      ],
                    ),
                  ),
                  //Search(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TabBar(
                      padding: EdgeInsets.zero,
                      indicatorColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: AppColors.white,
                      unselectedLabelColor: AppColors.blue,
                      indicator: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(13.r),
                      ),
                      tabs: [
                        Container(
                          width: 160.w,
                          height: 39.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.r),
                              border:
                                  Border.all(color: AppColors.blue, width: 1)),
                          child: const Tab(
                            //TODO
                            text: 'All',
                            //decoration: ,
                          ),
                          //text: 'All',
                        ),
                        Container(
                          width: 151.w,
                          height: 39.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.r),
                              border:
                                  Border.all(color: AppColors.blue, width: 1)),
                          child: const Tab(
                            //TODO
                            text: 'Saved',
                            //decoration: ,
                          ),
                          //text: 'All',
                        ),
                      ],
                    ),
                  ),
                  const CustomSpacing()
                ],
              ),
            ),
          ),
        ),
        body: const JobsBody(),
        endDrawer: const BodyDrawer(),
      ),
    );
  }
}
