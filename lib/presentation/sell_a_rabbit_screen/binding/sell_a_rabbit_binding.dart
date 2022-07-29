import '../controller/sell_a_rabbit_controller.dart';
import 'package:get/get.dart';

class SellARabbitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SellARabbitController());
  }
}
