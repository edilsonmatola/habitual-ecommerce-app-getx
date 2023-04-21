import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:habitual/l10n/string_hardcoded.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'l10n/l10n.dart';
import 'src/core/core_export.dart';
import 'src/routes/routes_export.dart';
import 'src/theme/theme_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        // AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
      onGenerateTitle: (context) => 'My App'.hardcoded,
      theme: AppThemes().lightTheme,
      darkTheme: AppThemes().darkTheme,
      title: AppTitles.appTitle,
      initialRoute: AppRoutes.introRoute,
      getPages: AppPages.pages,
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: [
          const ResponsiveBreakpoint.resize(
            350,
            name: MOBILE,
          ),
          const ResponsiveBreakpoint.autoScale(
            600,
            name: TABLET,
            scaleFactor: 1.3,
          ),
          const ResponsiveBreakpoint.autoScale(
            800,
            name: DESKTOP,
          ),
          const ResponsiveBreakpoint.autoScale(
            1200,
            name: 'XL',
            scaleFactor: 1.4,
          ),
        ],
      ),
    );
  }
}
