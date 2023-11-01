import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/config/routes/routes.dart';
import 'package:netflix/config/themes/night_theme.dart';
import 'package:netflix/internal/utils/binding.dart';
import 'package:netflix/internal/utils/localization/localization.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        translations: AppLocalization(),
        locale: const Locale('uk_UA'),
        initialBinding: ControllerBinds(),
        getPages: AppPages.pages,
        initialRoute: AppRoutes.startPage,
        theme: night_theme());
  }
}
