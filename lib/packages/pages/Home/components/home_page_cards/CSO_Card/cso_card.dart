import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_upcoming_previous_card.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/CSO_Card/cso_card_main.dart';

class CSOCard extends StatelessWidget {
  const CSOCard({
    Key? key,
    required final Widget titleWidget,
  })  : _titleWidget = titleWidget,
        super(key: key);
  final Widget _titleWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: _titleWidget),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => InkWell(
                onTap: () => {},
                child: const CustomUpcomingPreviousCard(
                  title: "Cancer Awareness Lecture",
                  subtitle: "on the occasion of cancer awareness month",
                  date: "Date And Time",
                  location: "Location",
                  time: "Time",
                ),
              ),
            ),
            flex: 6,
          ),
        ],
      ),
    );
  }
}
