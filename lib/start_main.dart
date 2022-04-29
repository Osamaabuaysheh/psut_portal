import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psut_portal/services/restart_app/app_restart.dart';

import 'packages/pages/HomePageController/views/home.dart';
import 'routes/app_route.dart';
import 'themes/custom_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RestartApp(
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (BuildContext ctx) => MaterialApp(
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          debugShowCheckedModeBanner: false,
          title: 'Psut Portal',
          themeMode: ThemeMode.light,
          theme: CustomTheme.lightTheme(context),
          darkTheme: CustomTheme.darkTheme(context),
          initialRoute: MainHomePage.id,
          routes: AppRoute.route,
        ),
      ),
    );
  }
}
