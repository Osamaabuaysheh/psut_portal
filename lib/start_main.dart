import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:psut_portal/packages/components/config_material.dart';
import 'package:psut_portal/packages/components/loading/loading_page.dart';
import 'package:psut_portal/packages/pages/Cards/views/cards_page.dart';
import 'package:psut_portal/packages/pages/ClubPage/views/club_page.dart';
import 'package:psut_portal/packages/pages/auth/Views/wrapper.dart';
import 'package:psut_portal/packages/pages/auth/manage_state/auth_service.dart';
import 'package:psut_portal/routes/app_route.dart';
import 'package:psut_portal/services/restart_app/app_restart.dart';
import 'package:psut_portal/themes/custom_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseApp>(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const ConfigMaterial(
            child: LoadingPage(),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return RestartApp(
              child: MultiProvider(
                providers: [
                  ChangeNotifierProvider<AuthService>(
                    create: (_) => AuthService(),
                  ),
                ],
                child: ScreenUtilInit(
                  designSize: const Size(360, 690),
                  builder: (BuildContext ctx, child) => MaterialApp(
                    locale: context.locale,
                    supportedLocales: context.supportedLocales,
                    localizationsDelegates: context.localizationDelegates,
                    debugShowCheckedModeBanner: false,
                    title: 'Psut Portal',
                    themeMode: ThemeMode.light,
                    theme: CustomTheme.lightTheme(context),
                    darkTheme: CustomTheme.darkTheme(context),
                    initialRoute: CardsPage.id,
                    // home: ClubPage(),
                    routes: AppRoute.route,
                  ),
                ),
              ),
            );
          } else {
            //TODO
            //? Error Text ("Error No Data")
            return ConfigMaterial(
              child: Scaffold(
                body: Container(),
              ),
            );
          }
        } else {
          //TODO
          //? Error Text Error Init Firebase
          return ConfigMaterial(
            child: Scaffold(
              body: Container(),
            ),
          );
        }
      },
    );
  }
}
