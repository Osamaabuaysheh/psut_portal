import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class CustomDataRowTabel {
  static DataRow dataRowTableCells({required List<String> strings}) {
    return DataRow(
      cells: [
        DataCell(
          SizedBox(
            child: Text(
              strings[0],
              style: CustomTheme.mainTextStyle?.copyWith(fontSize: 12.sp),
            ),
            width: 80.w,
          ),
        ),
        DataCell(
          SizedBox(
            child: Text(
              strings[1],
              textAlign: TextAlign.center,
            ),
            width: 60.w,
          ),
        ),
        DataCell(
          SizedBox(
            child: Text(
              strings[2],
              textAlign: TextAlign.center,
            ),
            width: 60.w,
          ),
        ),
        DataCell(
          SizedBox(
            child: Text(
              strings[3],
              textAlign: TextAlign.center,
            ),
            width: 60.w,
          ),
        ),
        DataCell(
          SizedBox(
            child: Text(
              strings[4],
              textAlign: TextAlign.center,
            ),
            width: 60.w,
          ),
        ),
      ],
    );
  }
}
