import '/core/app_export.dart';
import 'package:grabbit/presentation/rabbit_details_for_meat_selling_screen/models/rabbit_details_for_meat_selling_model.dart';
import 'package:flutter/material.dart';

class RabbitDetailsForMeatSellingController extends GetxController {
  TextEditingController statusController = TextEditingController();

  TextEditingController rabbitNumberController = TextEditingController();

  TextEditingController rabbitTypeController1 = TextEditingController();

  TextEditingController rabbitBreedController1 = TextEditingController();

  TextEditingController datepfAcquisaController = TextEditingController();

  Rx<RabbitDetailsForMeatSellingModel> rabbitDetailsForMeatSellingModelObj =
      RabbitDetailsForMeatSellingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    statusController.dispose();
    rabbitNumberController.dispose();
    rabbitTypeController1.dispose();
    rabbitBreedController1.dispose();
    datepfAcquisaController.dispose();
  }
}
