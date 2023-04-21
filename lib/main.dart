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
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(
            start: 0,
            end: 450,
            name: MOBILE,
          ),
          const Breakpoint(
            start: 451,
            end: 800,
            name: TABLET,
          ),
          const Breakpoint(
            start: 801,
            end: 1920,
            name: DESKTOP,
          ),
          const Breakpoint(
            start: 1921,
            end: double.infinity,
            name: '4K',
          ),
        ],
      ),
    );
  }
}
