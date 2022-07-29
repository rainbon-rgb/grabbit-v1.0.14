import '../controller/qr_code_generation_controller.dart';
import 'package:get/get.dart';

class QrCodeGenerationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodeGenerationController());
  }
}
