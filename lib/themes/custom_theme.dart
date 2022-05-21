import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

/// Doc : https://api.flutter.dev/flutter/material/TextTheme-class.html
class CustomTheme {
  // * * * * * * * * * * * * *** Light *** * * * * * * * * * * * *
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(
          color: AppColors.mainColor,
          size: 24.w,
        ),
        centerTitle: true,
        elevation: 0,
      ),

      /// displayColor ~>  headline4, headline3, headline2, headline1, and caption
      /// bodyColor  ~> is applied to the remaining text styles.
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.black,
            displayColor: Colors.black,
            fontFamily: GoogleFonts.aBeeZee().fontFamily,
          ),
    );
  }

  // * * * * * * * * * * * * *** Dark *** * * * * * * * * * * * *
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: AppColors.bgWhite),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppColors.bgWhite,
          fontSize: 20.sp,
          fontFamily: GoogleFonts.pacifico().fontFamily,
        ),
      ),
      textTheme: Theme.of(context).textTheme.apply(
            displayColor: Colors.white,
            bodyColor: Colors.white,
            fontFamily: GoogleFonts.aBeeZee().fontFamily,
          ),
    );
  }

  static TextStyle? mainTextStyle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.mainColor,
  );
  static TextStyle? secondaryTextStyle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryColor,
  );
}
