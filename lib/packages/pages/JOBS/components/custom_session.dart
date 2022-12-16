import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';
import 'package:intl/intl.dart';

class CustomSession extends StatelessWidget {
  const CustomSession({
    Key? key,
    String day = 'Sunday',
    String startTime = '1',
    String endTime = '3',
    int people = 1,
  })  : _day = day,
        _startTime = startTime,
        _endTime = endTime,
        _people = people,
        super(key: key);

  final String _day;
  final String _startTime;
  final String _endTime;
  final int _people;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.h,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _day,
                style: CustomTheme.normalBlue?.copyWith(fontSize: 13.sp),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "${DateFormat('jm').format(DateTime.parse("2022-12-12 " + _startTime))} - ${DateFormat('jm').format(DateTime.parse("2022-12-12 " + _endTime))}",
                style: CustomTheme.normalBlue?.copyWith(fontSize: 13.sp),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    _people.toString(),
                    style: CustomTheme.normalBlue?.copyWith(fontSize: 13.sp),
                  ),
                  Icon(
                    Icons.person,
                    color: AppColors.blue,
                  ),
                ],
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.white,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
