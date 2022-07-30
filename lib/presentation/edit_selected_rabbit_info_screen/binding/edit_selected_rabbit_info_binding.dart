import '../controller/edit_selected_rabbit_info_controller.dart';
import 'package:get/get.dart';

class EditSelectedRabbitInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditSelectedRabbitInfoController());
  }
}
