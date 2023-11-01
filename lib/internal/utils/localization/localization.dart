import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:netflix/internal/utils/localization/Languages/en_US.dart';
import 'package:netflix/internal/utils/localization/Languages/uk_UA.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': english,
        'uk_UA': ukraine,
      };
}
