import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/cso_event_date_component.dart';
import 'package:psut_portal/packages/pages/CSO/components/cso_event_name_components/cso_event_name_and_time.dart';

class CsoEventComponent extends StatelessWidget {
  const CsoEventComponent({
    Key? key,
    required String eventName,
    required String dateTime,
  })  : _eventName = eventName,
        _dateTime = dateTime,
        super(key: key);

  final String _eventName;
  final String _dateTime;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40.r),
        bottomRight: Radius.circular(40.r),
      ),
      child: Baseline(
        baseline: 200.w,
        baselineType: TextBaseline.alphabetic,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(25.r),
              elevation: 7,
              child: Container(
                padding: EdgeInsets.all(10.w),
                child: Row(
                  children: [
                    CsoEventDate(
                      month: DateFormat('MMM').format(
                        DateTime.parse("$_dateTime 12:13:13"),
                      ),
                      day: DateFormat('d').format(
                        DateTime.parse("$_dateTime 12:13:13"),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    CsoEventNameAndTime(
                        eventName: _eventName, dateTime: _dateTime),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
