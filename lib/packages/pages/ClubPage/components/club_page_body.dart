import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/background_image_club.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/button_icon_text.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/club_event_widget.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/club_icon_image.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/club_text_details.dart';
import 'package:psut_portal/packages/pages/ClubPage/components/club_title_text.dart';
import 'package:psut_portal/packages/pages/Home/components/custom_home_card_title.dart';

class ClubPageBody extends StatelessWidget {
  const ClubPageBody({
    Key? key,
    required final String backgroundImage,
    required final String iconImage,
    required final String clubName,
    required final String description,
  })  : _backgroundImage = backgroundImage,
        _clubName = clubName,
        _iconImage = iconImage,
        _description = description,
        super(key: key);

  final String _backgroundImage;
  final String _iconImage;
  final String _clubName;
  final String _description;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BackgroundImageClub(imageName: _backgroundImage),
          ClubIconImage(iconImage: _iconImage),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                ClubTitleText(title: _clubName),
                SizedBox(height: 20.h),
                ClubTextDetails(description: _description),
                SizedBox(height: 15.h),
                const ButtonIconText(
                    titleText: "Become a member", icon: Icons.person_add),
                SizedBox(height: 15.h),
                const ButtonIconText(
                    titleText: "Contact Us", icon: Icons.email),
                SizedBox(height: 15.h),
                // CustomHomeCardTitle(
                //     cardName: "Upocoming Events", onPressed: () {}),
                const CustomHomeCardTitle(
                  cardName: "Upocoming Events",
                  icon: Icons.notifications_none_sharp,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 250.w,
                  child: ClubEventWidget(clubName: _clubName),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
