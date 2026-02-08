import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/on_generate_routes.dart';
import 'core/routing/routes_name.dart';
import 'core/theme/app_theme.dart';


class WrattelApp extends StatelessWidget {
  const WrattelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: "ورتل",
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          // darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.light,
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            physics: const BouncingScrollPhysics(),
          ),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          onGenerateRoute: onGenerateRoutes,
          initialRoute: RoutesName.layoutScreen,
        );
      },
    );
  }
}