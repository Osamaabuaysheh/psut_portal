import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/themes/app_colors.dart';
import 'package:psut_portal/utils/svg_images.dart';

class AppBarSimple extends StatelessWidget with PreferredSizeWidget {
  const AppBarSimple({
    Key? key,
    required String title,
    final PreferredSizeWidget? bottomWidget,
    final double bottomsize = 0,
  })  : _title = title,
        _bottom = bottomWidget,
        _bottomSize = bottomsize,
        super(key: key);
  // ignore: unused_field
  final String _title;
  final PreferredSizeWidget? _bottom;
  final double _bottomSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(top: 10.w, left: 10.w),
        child: Container(
          child: AppSvg.psutLogo,
        ),
      ),
      iconTheme: IconThemeData(color: AppColors.mainColor),
      actions: const [],
      bottom: _bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height + _bottomSize.h);
}
