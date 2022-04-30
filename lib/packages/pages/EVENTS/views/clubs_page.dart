import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';

class ClubsPage extends StatelessWidget {
  const ClubsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: SizedBox(
        height: 500.h,
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) => SizedBox(
            height: 230.h,
            child: const EventCardMain(assetName: "assets/images/R.png"),
          ),
        ),
      ),
    );
  }
}
