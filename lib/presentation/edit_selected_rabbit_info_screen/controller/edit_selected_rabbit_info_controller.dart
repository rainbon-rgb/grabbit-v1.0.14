import '/core/app_export.dart';
import 'package:grabbit/presentation/edit_selected_rabbit_info_screen/models/edit_selected_rabbit_info_model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grabbit/firebase/models/models.dart';

class EditSelectedRabbitInfoController extends GetxController {
  TextEditingController groupFiftyNineController = TextEditingController();

  TextEditingController rabbitNameController1 = TextEditingController();

  TextEditingController rabbitTypeController1 = TextEditingController();

  TextEditingController rabbitBreedController1 = TextEditingController();

  TextEditingController rabbitWeightController1 = TextEditingController();

  TextEditingController dOPController1 = TextEditingController();

  Rx<EditSelectedRabbitInfoModel> editSelectedRabbitInfoModelObj =
      EditSelectedRabbitInfoModel().obs;

  FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  RabbitProfile rabbitProfileModelObj = RabbitProfile();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyNineController.dispose();
    rabbitNameController1.dispose();
    rabbitTypeController1.dispose();
    rabbitBreedController1.dispose();
    rabbitWeightController1.dispose();
    dOPController1.dispose();
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
    Get.toNamed(AppRoutes.selectedRabbitScreen);
  }

  onAddRabbitProfileError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "CHanges not saved");
  }
}
