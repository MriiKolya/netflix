import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:netflix/presentation/screens/startPage/domain/Movie_list_controller.dart';

class ControllerBinds implements Bindings {
  @override
  void dependencies() {
    Get.put(MovieListController());
  }
}
