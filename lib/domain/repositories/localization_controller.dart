// ignore_for_file: non_constant_identifier_names, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationController extends GetxController {
  Locale En = const Locale('en', 'US');
  Locale UA = const Locale('uk', 'UA');
  bool localeIsUA = true;

  Changelanguages() {
    if (localeIsUA) {
      Get.updateLocale(En);
      localeIsUA = false;
    } else {
      Get.updateLocale(UA);
      localeIsUA = true;
    }
  }
}
