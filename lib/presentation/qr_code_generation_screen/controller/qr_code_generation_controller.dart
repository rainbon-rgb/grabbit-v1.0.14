import '/core/app_export.dart';
import 'package:grabbit/presentation/qr_code_generation_screen/models/qr_code_generation_model.dart';

class QrCodeGenerationController extends GetxController {
  Rx<QrCodeGenerationModel> qrCodeGenerationModelObj =
      QrCodeGenerationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
