import '../controller/scan_qr_controller.dart';
import 'package:get/get.dart';

class ScanQrBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScanQrController());
  }
}
