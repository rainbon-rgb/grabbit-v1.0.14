import '../controller/edit_details_controller.dart';
import 'package:get/get.dart';

class EditDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditDetailsController());
  }
}
