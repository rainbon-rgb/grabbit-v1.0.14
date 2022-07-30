import '/core/app_export.dart';
import 'package:grabbit/presentation/selected_rabbit_screen/models/selected_rabbit_model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grabbit/firebase/models/models.dart';

class SelectedRabbitController extends GetxController {
  TextEditingController groupFiftyNineController = TextEditingController();

  Rx<SelectedRabbitModel> selectedRabbitModelObj = SelectedRabbitModel().obs;

  FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  List<RabbitProfile> rabbitProfileModelList = [];

  get statusController => null;

  @override
  void onReady() {
    super.onReady();
    getRabbitProfileDocumentList();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyNineController.dispose();
  }

  getRabbitProfileDocumentList() {
    firestoreInstance
        .collection("rabbitProfile")
        .limit(6)
        .orderBy("RabbitNumber", descending: false)
        .get()
        .then((value) {
      value.docs.forEach((element) {
        RabbitProfile rabbitProfileModelObj =
            RabbitProfile.fromQueryDocumentSnapshot(queryDocSnapshot: element);
        rabbitProfileModelList.add(rabbitProfileModelObj);
      });
      onGetRabbitProfileListSuccess();
    }).catchError((error) {
      print(error);
      onGetRabbitProfileListError();
    });
  }

  onGetRabbitProfileListSuccess() {}
  onGetRabbitProfileListError() {}
}
