import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/CSO/components/custom_listtile_upcoming.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CustomUpcomingPreviousCard extends StatelessWidget {
  const CustomUpcomingPreviousCard({
    Key? key,
    final String title = '',
    final String subtitle = '',
    final String date = '',
    final String time = '',
    final String location = '',
    final Widget? bottomRowWidget,
  })  : _title = title,
        _subtitle = subtitle,
        _data = date,
        _location = location,
        _bottomRowWidget = bottomRowWidget,
        _time = time,
        super(key: key);

  final String _title;
  final String _subtitle;
  final String _data;
  final String _time;
  final String _location;
  final Widget? _bottomRowWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      padding: EdgeInsets.symmetric(vertical: 10.w),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(30.r),
        child: Container(
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
          ),
          width: 310.w,
          height: 300.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(_title,
                  style: CustomTheme.mainTextStyle?.apply(fontSizeDelta: 2)),
              Text(
                _subtitle,
                style: CustomTheme.secondaryTextStyle?.apply(
                  color: Colors.grey,
                ),
              ),
              Column(
                children: [
                  CustomListTileUpcoming(
                    title: _data,
                    icon: Icons.calendar_month,
                  ),
                  CustomListTileUpcoming(
                    title: _time,
                    icon: Icons.watch_later_outlined,
                  ),
                  CustomListTileUpcoming(
                    title: _location,
                    icon: Icons.location_on_outlined,
                  ),
                ],
              ),
              _bottomRowWidget ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
