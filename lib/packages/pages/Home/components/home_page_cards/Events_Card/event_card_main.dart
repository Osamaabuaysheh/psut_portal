import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';

class EventCardMain extends StatelessWidget {
  const EventCardMain({
    Key? key,
    required final String assetName,
  })  : _assetName = assetName,
        super(key: key);

  final String _assetName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      margin: EdgeInsets.all(5.w),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image(
                  height: 200.h,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    _assetName,
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    "Event Name",
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: AppColors.mainColor,
                      ),
                      Text(
                        "Location",
                        style: TextStyle(
                          color: AppColors.mainColor,
                        ),
                      ),
                    ],
                  ),
                  trailing: Text(
                    "12PM - 3PM",
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
