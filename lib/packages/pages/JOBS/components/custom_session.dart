import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CustomSession extends StatelessWidget {
  const CustomSession({
    Key? key,
    String day = 'Sunday',
    String startTime = '1',
    String endTime = '3',
    int people = 1,
    String timePeriod = 'AM',
  })  : _day = day,
        _startTime = startTime,
        _endTime = endTime,
        _people = people,
        _timePeriod = timePeriod,
        super(key: key);

  final String _day;
  final String _startTime;
  final String _endTime;
  final String _timePeriod;
  final int _people;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 341.w,
      height: 52.h,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _day,
              style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
            ),
            Text(
              "$_startTime - $_endTime $_timePeriod",
              style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
            ),
            Row(
              children: [
                Text(
                  _people.toString(),
                  style: CustomTheme.normalBlue?.copyWith(fontSize: 20),
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
    );
  }
}
