import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/EVENTS/views/event_name_page.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';
import 'package:psut_portal/utils/svg_images.dart';

class AllEventsPage extends StatelessWidget {
  const AllEventsPage({Key? key}) : super(key: key);

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
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => EventNamePage(
                    icons: [
                      AppSvg.psutLogoGreen,
                      AppSvg.psutLogoGreen,
                      AppSvg.psutLogoGreen,
                    ],
                  ),
                ),
              ),
              child: const EventCardMain(
                assetName: "assets/images/error_page.jpg",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
