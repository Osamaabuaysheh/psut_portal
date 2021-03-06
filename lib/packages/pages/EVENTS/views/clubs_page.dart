import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/ClubPage/views/club_page.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class ClubsPage extends StatelessWidget {
  const ClubsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
              SizedBox(
                height: 50.h,
                child: ListView.builder(
                  itemCount: 8,
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
                        Navigator.pushNamed(context, ClubPage.id);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          "assets/images/AmazonLogo.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                heightFactor: 3,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Events",
                  style: CustomTheme.mainTextStyle?.copyWith(fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 500.h,
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 5.h),
                    child: SizedBox(
                      height: 230.h,
                      child:
                          const EventCardMain(assetName: "assets/images/R.png"),
                    ),
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
