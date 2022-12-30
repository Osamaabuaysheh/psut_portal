import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:psut_portal/Constants/API/login_api.dart';
import 'package:psut_portal/services/themes/theme_status.dart';
import 'package:psut_portal/themes/app_colors.dart';

class EventCardMain extends StatelessWidget {
  const EventCardMain({
    Key? key,
    required final String assetName,
    required final String eventName,
    required final String startTime,
    required final String endTime,
    required final String location,
  })  : _assetName = assetName,
        _eventName = eventName,
        _startTime = startTime,
        _endTime = endTime,
        _location = location,
        super(key: key);

  final String _assetName;
  final String _eventName;
  final String _startTime;
  final String _location;
  final String _endTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.r),
          ),
          child: Column(
            children: [
              Container(
                height: 135.h,
                width: double.infinity,
                color: Colors.transparent,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: "${ApiLogin.baseUrl}/$_assetName",
                ),
              ),
              ListTile(
                horizontalTitleGap: 10.w,
                title: Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Text(
                    _eventName.toString(),
                    maxLines: 1,
                    textAlign: AppTheme.hasArabicCharacters(_eventName)
                        ? TextAlign.end
                        : TextAlign.start,
                    softWrap: true,
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      color: AppColors.mainColor,
                    ),
                    SizedBox(
                      width: 150.w,
                      child: Text(
                        _location,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
                trailing: SizedBox(
                  width: 70.w,
                  child: Text(
                    "${DateFormat('jm').format(DateTime.parse("2022-12-12 " + _startTime))} - ${DateFormat('jm').format(DateTime.parse("2022-12-12 " + _endTime))}",
                    style: TextStyle(
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
