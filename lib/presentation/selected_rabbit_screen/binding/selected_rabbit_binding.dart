import '../controller/selected_rabbit_controller.dart';
import 'package:get/get.dart';

class SelectedRabbitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectedRabbitController());
  }
}
