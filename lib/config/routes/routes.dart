import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:netflix/presentation/screens/startPage/presentation/main_page.dart';

class AppRoutes {
  static const String startPage = '/';
}

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.startPage, page: (() => StartPage())),
  ];
}
