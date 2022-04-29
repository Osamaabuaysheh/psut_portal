import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/Home/components/home_page_cards/Events_Card/event_card_main.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required final Widget titleWidget,
  })  : _titleWidget = titleWidget,
        super(key: key);
  final Widget _titleWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450.w,
      height: 250.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: _titleWidget),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => const EventCardMain(),
            ),
            flex: 6,
          ),
        ],
      ),
    );
  }
}
