import '../controller/check_rabbits_controller.dart';
import 'package:get/get.dart';

class CheckRabbitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckRabbitsController());
  }
}
