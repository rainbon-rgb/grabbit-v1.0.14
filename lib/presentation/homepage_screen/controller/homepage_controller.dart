import '/core/app_export.dart';
import 'package:grabbit/presentation/homepage_screen/models/homepage_model.dart';

class HomepageController extends GetxController {
  Rx<HomepageModel> homepageModelObj = HomepageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
