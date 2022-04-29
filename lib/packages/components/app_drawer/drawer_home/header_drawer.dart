import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psut_portal/services/themes/theme_status.dart';
import 'package:psut_portal/themes/app_colors.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(height: 15.h),
          Row(
            children: [
              const SizedBox(width: 20),
              // *  image
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/avatar.png"),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // * name
                    Text(
                      'Osama Abu Aysheh',
                      style: GoogleFonts.pacifico(),
                    ),
                    SizedBox(height: 8.h),
                    // * email
                    const Text(
                      'Osama@gmail.com',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),

          // * Divider
          Divider(
            color: AppTheme.isDark(context)
                ? AppColors.bgWhite
                : AppColors.bgBlack.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
