import 'controller/selected_rabbit_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/widgets/custom_button.dart';
import 'package:grabbit/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SelectedRabbitScreen extends GetWidget<SelectedRabbitController> {
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
                                                    height:
                                                        getVerticalSize(53.00),
                                                    width: size.width,
                                                    decoration: AppDecoration
                                                        .fillAmber400,
                                                    child: Stack(children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 7,
                                                                      right: 10,
                                                                      bottom:
                                                                          10),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgBack,
                                                                  height:
                                                                      getVerticalSize(
                                                                          35.00),
                                                                  width: getHorizontalSize(
                                                                      48.00))))
                                                    ]))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 22,
                                                    top: 20,
                                                    right: 22),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      13.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .img11,
                                                              height:
                                                                  getVerticalSize(
                                                                      112.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      144.00))),
                                                      CustomTextFormField(
                                                          width: 143,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .statusController,
                                                          hintText:
                                                              "lbl_status".tr,
                                                          margin: getMargin(
                                                              top: 23,
                                                              bottom: 56),
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .FillAmber400,
                                                          shape:
                                                              TextFormFieldShape
                                                                  .RoundedBorder5,
                                                          padding:
                                                              TextFormFieldPadding
                                                                  .PaddingT8,
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .InterMedium15,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done)
                                                    ])),
                                            Container(
                                                margin: getMargin(
                                                    left: 22,
                                                    top: 44,
                                                    right: 22),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 15,
                                                    right: 30,
                                                    bottom: 15),
                                                decoration: AppDecoration
                                                    .txtOutlineBlack9001e12
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder15),
                                                child: Obx(() => Text(
                                                    controller
                                                        .selectedRabbitModelObj
                                                        .value
                                                        .rabbitNameTxt
                                                        .value,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular14
                                                        .copyWith(
                                                            letterSpacing: 0.25,
                                                            height: 1.43)))),
                                            Container(
                                                margin: getMargin(
                                                    left: 22,
                                                    top: 12,
                                                    right: 22),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 15,
                                                    right: 30,
                                                    bottom: 15),
                                                decoration: AppDecoration
                                                    .txtOutlineBlack9001e12
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder15),
                                                child: Obx(() => Text(
                                                    controller
                                                        .selectedRabbitModelObj
                                                        .value
                                                        .rabbitTypeTxt
                                                        .value,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular14
                                                        .copyWith(
                                                            letterSpacing: 0.25,
                                                            height: 1.43)))),
                                            Container(
                                                margin: getMargin(
                                                    left: 22,
                                                    top: 12,
                                                    right: 22),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 15,
                                                    right: 30,
                                                    bottom: 15),
                                                decoration: AppDecoration
                                                    .txtOutlineBlack9001e12
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder15),
                                                child: Obx(() => Text(
                                                    controller
                                                        .selectedRabbitModelObj
                                                        .value
                                                        .rabbitBreedTxt
                                                        .value,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular14
                                                        .copyWith(
                                                            letterSpacing: 0.25,
                                                            height: 1.43)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 22,
                                                    top: 12,
                                                    right: 22),
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
                                                          child: Obx(() => Text(
                                                              controller
                                                                  .selectedRabbitModelObj
                                                                  .value
                                                                  .rabbitHeightTxt
                                                                  .value,
                                                              maxLines: null,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height: 1.43)))),
                                                      Container(
                                                          width: getHorizontalSize(
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
                                                          child: Obx(() => Text(
                                                              controller
                                                                  .selectedRabbitModelObj
                                                                  .value
                                                                  .rabbitWidthTxt
                                                                  .value,
                                                              maxLines: null,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height: 1.43)))),
                                                      Container(
                                                          width: getHorizontalSize(
                                                              99.00),
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
                                                          child: Obx(() => Text(
                                                              controller
                                                                  .selectedRabbitModelObj
                                                                  .value
                                                                  .rabbitWeightTxt
                                                                  .value,
                                                              maxLines: null,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.25,
                                                                      height: 1.43))))
                                                    ])),
                                            Container(
                                                margin: getMargin(
                                                    left: 22,
                                                    top: 12,
                                                    right: 22),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 15,
                                                    right: 30,
                                                    bottom: 15),
                                                decoration: AppDecoration
                                                    .txtOutlineBlack9001e12
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder15),
                                                child: Obx(() => Text(
                                                    controller
                                                        .selectedRabbitModelObj
                                                        .value
                                                        .dOPTxt
                                                        .value,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular14
                                                        .copyWith(
                                                            letterSpacing: 0.25,
                                                            height: 1.43)))),
                                            CustomButton(
                                                width: 267,
                                                text: "lbl_edit".tr,
                                                margin: getMargin(
                                                    left: 22,
                                                    top: 129,
                                                    right: 22),
                                                onTap: onTapBtnEdit)
                                          ])))
                            ])))))));
  }

  onTapBtnEdit() {
    Get.toNamed(AppRoutes.editDetailsScreen);
  }
}
