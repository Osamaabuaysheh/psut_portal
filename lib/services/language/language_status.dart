import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppLang {
  /// * get language code
  /// currentLocale ~> ar-EG
  /// languageCode ~> ar
  /// default en
  static String currentLang(BuildContext context) =>
      EasyLocalization.of(context)?.currentLocale?.languageCode ?? 'en';

  static bool isAr(BuildContext context) =>
      EasyLocalization.of(context)?.currentLocale?.languageCode == 'ar';
}
