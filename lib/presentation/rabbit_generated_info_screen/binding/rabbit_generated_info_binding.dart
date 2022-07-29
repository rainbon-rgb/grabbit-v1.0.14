import '../controller/rabbit_generated_info_controller.dart';
import 'package:get/get.dart';

class RabbitGeneratedInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RabbitGeneratedInfoController());
  }
}
