import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:psut_portal/themes/app_colors.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: FloatingSearchBar(
        margins: const EdgeInsets.all(0),
        automaticallyImplyBackButton: false,
        backdropColor: Colors.transparent,
        // automaticallyImplyDrawerHamburger: true,
        elevation: 0,
        //hintStyle: TextStyle(),
        // leadingActions: const [Icon(Icons.search_rounded)],
        iconColor: AppColors.grey,
        hint: 'Search',
        backgroundColor: AppColors.searchColor,
        builder: (context, transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Material(
              color: Colors.white,
              elevation: 4.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: Colors.accents.map(
                  (color) {
                    return Container(height: 112, color: color);
                  },
                ).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
