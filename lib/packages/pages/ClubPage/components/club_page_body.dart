import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/background_image_club.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/button_icon_text.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/club_icon_image.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/club_text_details.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/club_title_text.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/events_page.dart';
import 'package:psut_portal/packages/pages/Home/components/custom_home_card_title.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card.dart';

class ClubPageBody extends StatelessWidget {
  const ClubPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BackgroundImageClub(
              imageName: "assets/images/acm background.png"),
          const ClubIconImage(),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                const ClubTitleText(),
                SizedBox(height: 20.h),
                const ClubTextDetails(),
                SizedBox(height: 15.h),
                const ButtonIconText(
                    titleText: "Become a member", icon: Icons.person_add),
                SizedBox(height: 15.h),
                const ButtonIconText(
                    titleText: "Contact Us", icon: Icons.email),
                SizedBox(height: 15.h),
                // CustomHomeCardTitle(
                //     cardName: "Upocoming Events", onPressed: () {}),
                EventCard(
                  titleWidget: CustomHomeCardTitle(
                    cardName: "Upocoming Events",
                    icon: Icons.notifications_none_sharp,
                    onPressed: () =>
                        Navigator.pushNamed(context, EventsPage.id),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
