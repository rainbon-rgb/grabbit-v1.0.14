import 'controller/edit_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/core/utils/validation_functions.dart';
import 'package:grabbit/widgets/custom_button.dart';
import 'package:grabbit/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditDetailsScreen extends GetWidget<EditDetailsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Padding(
                                  padding:
                                      getPadding(left: 22, top: 45, right: 22),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(13.00)),
                                      child: CommonImageView(
                                          imagePath: ImageConstant.img11,
                                          height: getVerticalSize(112.00),
                                          width: getHorizontalSize(144.00)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 22,
                                          top: 32,
                                          right: 22,
                                          bottom: 20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitNameController,
                                                hintText:
                                                    "lbl_rabbit_number".tr,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isText(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid text";
                                                  }
                                                  return null;
                                                }),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitTypeController,
                                                hintText: "lbl_rabbit_type".tr,
                                                margin: getMargin(top: 12),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isText(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid text";
                                                  }
                                                  return null;
                                                }),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitBreedController,
                                                hintText: "lbl_rabbit_breed".tr,
                                                margin: getMargin(top: 12),
                                                validator: (value) {
                                                  if (!isText(value)) {
                                                    return "Please enter valid text";
                                                  }
                                                  return null;
                                                }),
                                            Padding(
                                                padding: getPadding(top: 12),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  99.00),
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 15,
                                                              bottom: 15),
                                                          decoration: AppDecoration
                                                              .txtOutlineBlack9001e
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .txtRoundedBorder15),
                                                          child: Text(
                                                              "lbl_height".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height:
                                                                          1.43))),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  98.00),
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 15,
                                                              bottom: 15),
                                                          decoration: AppDecoration
                                                              .txtOutlineBlack9001e
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .txtRoundedBorder15),
                                                          child: Text(
                                                              "lbl_width".tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height:
                                                                          1.43))),
                                                      CustomTextFormField(
                                                          width: 99,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .rabbitWeightController,
                                                          hintText:
                                                              "lbl_weight".tr)
                                                    ])),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller:
                                                    controller.dOPController,
                                                hintText:
                                                    "msg_date_of_acquisa".tr,
                                                margin: getMargin(top: 12),
                                                textInputAction:
                                                    TextInputAction.done,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isNumeric(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid number";
                                                  }
                                                  return null;
                                                }),
                                            CustomButton(
                                                width: 267,
                                                text: "lbl_save".tr,
                                                margin: getMargin(
                                                    left: 21,
                                                    top: 190,
                                                    right: 21),
                                                onTap: onTapBtnSave,
                                                alignment: Alignment.center)
                                          ])))
                            ])))))));
  }

  onTapBtnSave() {
    Map<String, dynamic> rabbitProfileModel = {
      'RabbitNumber': controller.rabbitNameController.text,
      'RabbitType': controller.rabbitTypeController.text,
      'RabbitBreed': controller.rabbitBreedController.text,
      'Weight': controller.rabbitWeightController.text,
      'DateofPurchase': controller.dOPController.text,
    };
    controller.addRabbitProfileDocument(rabbitProfileModel);
  }
}
