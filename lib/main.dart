import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:psut_portal/start_main.dart';

import 'language/config/config_lang.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        ConfigLanguage.enLocale,
        ConfigLanguage.arLocale
      ],
      path: ConfigLanguage.langPath,
      fallbackLocale: ConfigLanguage.enLocale,
      child: const MyApp(),
    ),
  );
}
