import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/utils/path_image.dart';

class BusDetails extends StatelessWidget {
  const BusDetails({
    Key? key,
    required String id,
    required String name,
    required String route,
    required String mwBack,
    required String mwPresence,
    required String sttBack,
    required String sttPresence,
  })  : _id = id,
        _name = name,
        _route = route,
        _mwPresence = mwPresence,
        _mwBack = mwBack,
        _sttBack = sttBack,
        _sttPresence = sttPresence,
        super(key: key);

  final String _id;
  final String _name;
  final String _route;
  final String _mwBack;
  final String _mwPresence;
  final String _sttBack;
  final String _sttPresence;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                const Spacer(),
                RichText(
                  text: TextSpan(
                    text: "     بطاقة اشتراك الباص\n",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "\t 2021/2022 الفصل الأول",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Image(image: AssetImage(PathImage.psutLogo)),
              ],
            ),
            flex: 2,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(" الاسم: $_name"),
                  Text("الرقم:  $_id"),
                  Text("الخط: $_route"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DayTimeBus(
                          firstRow: "Th",
                          secondRow: _sttPresence,
                          thirdRow: _sttBack),
                      DayTimeBus(
                          firstRow: "We",
                          secondRow: _mwPresence,
                          thirdRow: _mwBack),
                      DayTimeBus(
                          firstRow: "Tu",
                          secondRow: _sttPresence,
                          thirdRow: _sttBack),
                      DayTimeBus(
                          firstRow: "Mo",
                          secondRow: _mwPresence,
                          thirdRow: _mwBack),
                      DayTimeBus(
                          firstRow: "Su",
                          secondRow: _sttPresence,
                          thirdRow: _sttBack),
                      const DayTimeBus(secondRow: " :حضور", thirdRow: " :عودة"),
                    ],
                  ),
                ],
              ),
            ),
            flex: 4,
          )
        ],
      ),
    );
  }
}

class DayTimeBus extends StatelessWidget {
  const DayTimeBus({
    Key? key,
    final String firstRow = "",
    required String secondRow,
    required String thirdRow,
  })  : _firstRow = firstRow,
        _secondRow = secondRow,
        _thirdRow = thirdRow,
        super(key: key);

  final String _firstRow;
  final String _secondRow;
  final String _thirdRow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_firstRow),
        Text(_secondRow),
        Text(_thirdRow),
      ],
    );
  }
}
