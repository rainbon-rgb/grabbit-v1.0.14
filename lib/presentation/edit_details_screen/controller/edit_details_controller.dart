import '/core/app_export.dart';
import 'package:grabbit/presentation/edit_details_screen/models/edit_details_model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grabbit/firebase/models/models.dart';

class EditDetailsController extends GetxController {
  TextEditingController rabbitNameController = TextEditingController();

  TextEditingController rabbitTypeController = TextEditingController();

  TextEditingController rabbitBreedController = TextEditingController();

  TextEditingController rabbitWeightController = TextEditingController();

  TextEditingController dOPController = TextEditingController();

  Rx<EditDetailsModel> editDetailsModelObj = EditDetailsModel().obs;

  FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  RabbitProfile rabbitProfileModelObj = RabbitProfile();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    rabbitNameController.dispose();
    rabbitTypeController.dispose();
    rabbitBreedController.dispose();
    rabbitWeightController.dispose();
    dOPController.dispose();
  }

  addRabbitProfileDocument(Map<String, dynamic> model) {
    firestoreInstance.collection("rabbitProfile").add(model).then((value) {
      onAddRabbitProfileSuccess();
    }).catchError((error) {
      print(error);
      onAddRabbitProfileError();
    });
  }

  onAddRabbitProfileSuccess() {
    Get.toNamed(AppRoutes.qrCodeGenerationScreen);
  }

  onAddRabbitProfileError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "Failed to save Rabbit");
  }
}
