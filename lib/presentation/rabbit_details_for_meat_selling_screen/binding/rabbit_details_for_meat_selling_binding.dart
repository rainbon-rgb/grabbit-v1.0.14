import '../controller/rabbit_details_for_meat_selling_controller.dart';
import 'package:get/get.dart';

class RabbitDetailsForMeatSellingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RabbitDetailsForMeatSellingController());
  }
}
