import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/packages/pages/BUS/components/BUS_Tours_Table/data_row_table.dart';
import 'package:psut_portal/packages/pages/BUS/models/bus_route.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class MadinaTourTable extends StatelessWidget {
  const MadinaTourTable({
    Key? key,
    required List<BusRoute> routes,
  })  : _routes = routes,
        super(key: key);

  final List<BusRoute> _routes;

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
              ..._routes.map(
                (route) => CustomDataRowTabel.dataRowTableCells(
                  strings: [
                    route.locationTrip ?? "",
                    route.firstRoute ?? "",
                    route.secondRoute ?? "",
                    route.thirdRoute ?? "",
                    route.fourthRoute ?? "--",
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
