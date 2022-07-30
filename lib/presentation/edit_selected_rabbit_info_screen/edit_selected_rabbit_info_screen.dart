import 'controller/edit_selected_rabbit_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/core/utils/validation_functions.dart';
import 'package:grabbit/widgets/custom_button.dart';
import 'package:grabbit/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditSelectedRabbitInfoScreen
    extends GetWidget<EditSelectedRabbitInfoController> {
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
                            height: size.height,
                            width: size.width,
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                      margin: getMargin(bottom: 10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: double.infinity,
                                                    decoration: AppDecoration
                                                        .fillAmber400,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                  width: size
                                                                      .width,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              13,
                                                                          right:
                                                                              10),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              onTapImgBack();
                                                                            },
                                                                            child: CommonImageView(
                                                                                imagePath: ImageConstant.imgBack,
                                                                                height: getVerticalSize(28.00),
                                                                                width: getHorizontalSize(48.00))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 3, bottom: 3),
                                                                            child: Text("lbl_edit_details".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtPoppinsSemiBold20.copyWith()))
                                                                      ]))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 22,
                                                                      top: 37,
                                                                      right: 22,
                                                                      bottom:
                                                                          21),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                13.00)),
                                                                            child: CommonImageView(
                                                                                imagePath: ImageConstant.img11,
                                                                                height: getVerticalSize(112.00),
                                                                                width: getHorizontalSize(144.00))),
                                                                        CustomTextFormField(
                                                                            width:
                                                                                143,
                                                                            focusNode:
                                                                                FocusNode(),
                                                                            controller:
                                                                                controller.groupFiftyNineController,
                                                                            hintText: "lbl_status".tr,
                                                                            margin: getMargin(top: 23, bottom: 56),
                                                                            variant: TextFormFieldVariant.FillAmber400,
                                                                            shape: TextFormFieldShape.RoundedBorder5,
                                                                            padding: TextFormFieldPadding.PaddingT8,
                                                                            fontStyle: TextFormFieldFontStyle.InterMedium15)
                                                                      ])))
                                                        ]))),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitNameController1,
                                                hintText:
                                                    "lbl_rabbit_number".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 18,
                                                    right: 23),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isNumeric(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid number";
                                                  }
                                                  return null;
                                                }),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitTypeController1,
                                                hintText: "lbl_rabbit_type".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 12,
                                                    right: 23)),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitBreedController1,
                                                hintText: "lbl_rabbit_breed".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 12,
                                                    right: 23)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 23,
                                                    top: 12,
                                                    right: 23),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                          margin: getMargin(
                                                              left: 9),
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
                                                              .rabbitWeightController1,
                                                          hintText:
                                                              "lbl_weight".tr,
                                                          margin: getMargin(
                                                              left: 9))
                                                    ])),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller:
                                                    controller.dOPController1,
                                                hintText:
                                                    "msg_date_of_acquisa".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 12,
                                                    right: 23),
                                                textInputAction:
                                                    TextInputAction.done),
                                            CustomButton(
                                                width: 267,
                                                text: "lbl_save".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 129,
                                                    right: 23),
                                                onTap: onTapBtnSave)
                                          ])))
                            ])))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.selectedRabbitScreen);
  }

  onTapBtnSave() {
    Map<String, dynamic> rabbitProfileModel = {
      'RabbitNumber': controller.rabbitNameController1.text,
      'RabbitType': controller.rabbitTypeController1.text,
      'RabbitBreed': controller.rabbitBreedController1.text,
      'DateofPurchase': controller.dOPController1.text,
      'Weight': '' //TODO:Add documentId,
    };
    controller.addRabbitProfileDocument(rabbitProfileModel);
  }
}
