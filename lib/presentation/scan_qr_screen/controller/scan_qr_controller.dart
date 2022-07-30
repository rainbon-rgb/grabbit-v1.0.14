import '/core/app_export.dart';
import 'package:grabbit/presentation/scan_qr_screen/models/scan_qr_model.dart';

class ScanQrController extends GetxController {
  Rx<ScanQrModel> scanQrModelObj = ScanQrModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
