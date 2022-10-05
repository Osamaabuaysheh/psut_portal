import 'package:flutter/material.dart';
import 'package:psut_portal/packages/components/button/custom_button.dart';
import 'package:psut_portal/packages/components/custom_spacing.dart';
import 'package:psut_portal/packages/components/para_space.dart';
import 'package:psut_portal/packages/pages/JOBS/components/custom_session.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class BookTutor extends StatelessWidget {
  const BookTutor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 30,
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
      //color: Colors.red,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please select a session',
              style: CustomTheme.bigTitle?.copyWith(fontSize: 23),
            ),
            Text(
              '''Note that if a session cannot take place if it has less than 5 students ''',
              style: CustomTheme.normalBlue?.copyWith(fontSize: 18),
            ),
            const ParaSpacing(),
            const CustomSession(
              day: "Sunday",
              startTime: "10",
              endTime: "11",
              timePeriod: "AM",
              people: 3,
            ),
            const CustomSpacing(),
            const CustomSession(
              day: "Tuesday",
              startTime: "2",
              endTime: "4",
              timePeriod: "PM",
              people: 1,
            ),
            const CustomSpacing(),
            const CustomSession(
              day: "Wednesday",
              startTime: "2",
              endTime: "4",
              timePeriod: "PM",
              people: 8,
            ),
            const ParaSpacing(),
            CustomButton(
              onPressed: () {},
              textButton: "Book a Session",
            ),
          ],
        ),
      ),
    );
  }
}
