import 'controller/selected_rabbit_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/widgets/custom_button.dart';
import 'package:grabbit/widgets/custom_text_form_field.dart';
import 'package:firebase_core/firebase_core.dart';

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
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapImgBack();
                                      },
                                      child: Padding(
                                          padding:
                                              getPadding(top: 13, right: 10),
                                          child: CommonImageView(
                                              imagePath: ImageConstant.imgBack,
                                              height: getVerticalSize(28.00),
                                              width:
                                                  getHorizontalSize(48.00))))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 23,
                                          top: 12,
                                          right: 23,
                                          bottom: 20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding:
                                                        getPadding(right: 1),
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
                                                                  width: getHorizontalSize(
                                                                      144.00))),
                                                          CustomTextFormField(
                                                              width: 143,
                                                              focusNode:
                                                                  FocusNode(),
                                                              controller: controller
                                                                  .groupFiftyNineController,
                                                              hintText:
                                                                  "lbl_status"
                                                                      .tr,
                                                              margin: getMargin(
                                                                  top: 23,
                                                                  bottom: 56),
                                                              variant:
                                                                  TextFormFieldVariant
                                                                      .FillAmber400,
                                                              shape: TextFormFieldShape
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
                                                        ]))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 1,
                                                        top: 64,
                                                        right: 2),
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle.txtRobotoRegular14.copyWith(
                                                            letterSpacing: 0.25,
                                                            height: 1.43))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 1,
                                                        top: 12,
                                                        right: 2),
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle.txtRobotoRegular14.copyWith(
                                                            letterSpacing: 0.25,
                                                            height: 1.43))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 1,
                                                        top: 12,
                                                        right: 2),
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle.txtRobotoRegular14.copyWith(
                                                            letterSpacing: 0.25,
                                                            height: 1.43))))),
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
                                                          child: Obx(() => Text(
                                                              controller
                                                                  .selectedRabbitModelObj
                                                                  .value
                                                                  .rabbitWeidthTxt
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
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 1,
                                                        top: 12,
                                                        right: 2),
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle.txtRobotoRegular14.copyWith(
                                                            letterSpacing: 0.25,
                                                            height: 1.43))))),
                                            CustomButton(
                                                width: 267,
                                                text: "lbl_edit".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 129,
                                                    right: 23),
                                                onTap: onTapBtnEdit,
                                                alignment: Alignment.center)
                                          ])))
                            ])))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.checkRabbitsScreen);
  }

  onTapBtnEdit() {
    Get.toNamed(AppRoutes.editDetailsScreen);
  }
}
