import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:psut_portal/packages/pages/splash/views/body.dart';
import 'package:psut_portal/routes/app_route.dart';
import 'package:psut_portal/services/initBinding/init_binding.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext ctx, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Psut Portal',
        themeMode: ThemeMode.light,
        theme: CustomTheme.lightTheme(context),
        darkTheme: CustomTheme.darkTheme(context),
        initialRoute: PageSplash.id,
        getPages: AppRoute.route,
        initialBinding: InitBinding(),
      ),
    );
  }
}
