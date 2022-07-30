import '/core/app_export.dart';
import 'package:grabbit/presentation/rabbit_details_for_meat_selling_screen/models/rabbit_details_for_meat_selling_model.dart';
import 'package:flutter/material.dart';

class RabbitDetailsForMeatSellingController extends GetxController {
  TextEditingController groupFiftyNineController1 = TextEditingController();

  TextEditingController rabbitNameController2 = TextEditingController();

  TextEditingController rabbitTypeController2 = TextEditingController();

  TextEditingController rabbitBreedController2 = TextEditingController();

  TextEditingController dOPController2 = TextEditingController();

  Rx<RabbitDetailsForMeatSellingModel> rabbitDetailsForMeatSellingModelObj =
      RabbitDetailsForMeatSellingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyNineController1.dispose();
    rabbitNameController2.dispose();
    rabbitTypeController2.dispose();
    rabbitBreedController2.dispose();
    dOPController2.dispose();
  }
}
