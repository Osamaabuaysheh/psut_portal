import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CsoProfileCustomTable extends StatelessWidget {
  const CsoProfileCustomTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 25.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.mainColor,
            ),
            child: DataTable(
              headingTextStyle:
                  CustomTheme.mainTextStyle?.copyWith(color: Colors.white),
              dataRowColor: MaterialStateColor.resolveWith(
                (states) {
                  return Colors.white;
                },
              ),
              dataTextStyle: CustomTheme.mainTextStyle
                  ?.copyWith(fontSize: 13.sp, fontWeight: FontWeight.normal),
              dataRowHeight: 70,
              columns: const [
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Hours")),
                DataColumn(label: Text("Activity Type")),
                DataColumn(label: Text("Rating")),
              ],
              dividerThickness: 3,
              horizontalMargin: 30,
              columnSpacing: 10,
              rows: List.generate(
                40,
                (index) => DataRow(
                  cells: [
                    DataCell(
                      SizedBox(
                        child: const Text("cancer awareness lecture"),
                        width: 150.w,
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        child: const Text("2020-10-24 18:00:00"),
                        width: 100.w,
                      ),
                    ),
                    const DataCell(Text("1")),
                    DataCell(SizedBox(
                      child: const Text("student activities"),
                      width: 100.w,
                    )),
                    const DataCell(Text("10")),
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
