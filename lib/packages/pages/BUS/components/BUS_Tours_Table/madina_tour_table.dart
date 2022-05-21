import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/BUS/components/BUS_Tours_Table/data_row_table.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class MadinaTourTable extends StatelessWidget {
  const MadinaTourTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: DataTable(
            headingTextStyle: CustomTheme.mainTextStyle
                ?.copyWith(fontWeight: FontWeight.normal),
            dataRowColor: MaterialStateColor.resolveWith(
              (states) {
                return Colors.white;
              },
            ),
            dataTextStyle: CustomTheme.mainTextStyle
                ?.copyWith(fontSize: 13.sp, fontWeight: FontWeight.normal),
            dataRowHeight: 45.h,
            columns: const [
              DataColumn(label: Text("")),
              DataColumn(label: Text("")),
              DataColumn(label: Text("")),
              DataColumn(label: Text("Trips")),
              DataColumn(label: Text("")),
            ],
            dividerThickness: 0,
            horizontalMargin: 20,
            columnSpacing: 10.w,
            rows: [
              CustomDataRowTabel.dataRowTableCells(
                strings: [
                  "",
                  "First (8)",
                  "Second (9)",
                  "Third (11)",
                  "Fourth (14:30)"
                ],
              ),
              CustomDataRowTabel.dataRowTableCells(
                strings: [
                  "Waha Circle\n(Habiba)",
                  "8:00",
                  "9:00",
                  "11:07",
                  "--",
                ],
              ),
              CustomDataRowTabel.dataRowTableCells(
                strings: [
                  "Before AlHaramein Int.",
                  "8:05",
                  "9:05",
                  "11:10",
                  "--"
                ],
              ),
              CustomDataRowTabel.dataRowTableCells(
                strings: [
                  "7th Circle\n(C-Town)",
                  "8:10",
                  "9:10",
                  "11:15",
                  "--"
                ],
              ),
              CustomDataRowTabel.dataRowTableCells(
                strings: ["8th Circle", "8:15", "9:15", "11:20", "--"],
              ),
              CustomDataRowTabel.dataRowTableCells(
                strings: ["Mecca Street Circle", "8:18", "9:18", "11:23", "--"],
              ),
              CustomDataRowTabel.dataRowTableCells(
                strings: ["Khilda Circle", "8:20", "9:20", "11:26", "--"],
              ),
              CustomDataRowTabel.dataRowTableCells(
                strings: ["Sweileh", "8:25", "9:25", "11:20", "--"],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
