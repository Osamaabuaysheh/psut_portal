import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/services/themes/theme_status.dart';

// ! Components
import 'enum_loading.dart';
import '../../../Themes/app_colors.dart';

class AppLoading extends StatelessWidget {
  const AppLoading(
      {Key? key, required ChooseLoading chooseLoading, double size = 45})
      : _chooseLoading = chooseLoading,
        _size = size,
        super(key: key);

  final ChooseLoading _chooseLoading;
  final double _size;

  @override
  Widget build(BuildContext context) {
    Color _loadingColor = AppTheme.isDark(context)
        ? AppColors.darkLoading
        : AppColors.lightLoading;
    switch (_chooseLoading) {
      case ChooseLoading.profile:
        return SpinKitSquareCircle(color: _loadingColor, size: _size.sp);

      case ChooseLoading.image:
        return SpinKitFadingCircle(color: _loadingColor, size: _size.sp);

      case ChooseLoading.page:
        return SpinKitPouringHourGlassRefined(
          size: _size.w,
          color: _loadingColor,
        );

      case ChooseLoading.webPage:
        return SpinKitWanderingCubes(color: _loadingColor, size: _size.sp);
      case ChooseLoading.button:
        return SpinKitFadingCircle(
          itemBuilder: (_, __) {
            return DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: AppColors.btnColor),
                shape: BoxShape.circle,
              ),
            );
          },
          size: _size.sp,
        );

      default:
        return SpinKitFadingCircle(color: _loadingColor, size: _size.sp);
    }
  }
}
