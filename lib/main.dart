import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/routes/routes_export.dart';

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
      title: 'Habitual',
      initialRoute: AppRoutes.introRoute,
      getPages: AppPages.pages,
    );
  }
}
