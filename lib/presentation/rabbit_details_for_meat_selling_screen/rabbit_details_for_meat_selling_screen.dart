import 'controller/rabbit_details_for_meat_selling_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/core/utils/validation_functions.dart';
import 'package:grabbit/widgets/custom_text_form_field.dart';
import 'package:firebase_core/firebase_core.dart';

// ignore_for_file: must_be_immutable
class RabbitDetailsForMeatSellingScreen
    extends GetWidget<RabbitDetailsForMeatSellingController> {
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
                                      margin: getMargin(
                                          top: 19, right: 10, bottom: 19),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: size.width,
                                                    margin:
                                                        getMargin(right: 10),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapImgBack();
                                                              },
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              1),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgBack,
                                                                      height: getVerticalSize(
                                                                          28.00),
                                                                      width: getHorizontalSize(
                                                                          48.00)))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 51),
                                                              child: Text(
                                                                  "lbl_details"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtPoppinsSemiBold20
                                                                      .copyWith()))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 10, top: 37),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      133.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      146.00),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Container(
                                                                            height: getVerticalSize(133.00),
                                                                            width: getHorizontalSize(146.00),
                                                                            decoration: BoxDecoration(color: ColorConstant.gray200, borderRadius: BorderRadius.circular(getHorizontalSize(73.00)), boxShadow: [
                                                                              BoxShadow(color: ColorConstant.black9003f, spreadRadius: getHorizontalSize(2.00), blurRadius: getHorizontalSize(2.00), offset: Offset(6, 5))
                                                                            ]))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 14,
                                                                                top: 29,
                                                                                right: 15,
                                                                                bottom: 29),
                                                                            child: CommonImageView(imagePath: ImageConstant.imgImgarabbitone, height: getVerticalSize(73.00), width: getHorizontalSize(116.00))))
                                                                  ])),
                                                          CustomTextFormField(
                                                              width: 158,
                                                              focusNode:
                                                                  FocusNode(),
                                                              controller: controller
                                                                  .statusController,
                                                              hintText:
                                                                  "lbl_status"
                                                                      .tr,
                                                              margin: getMargin(
                                                                  left: 14,
                                                                  top: 13,
                                                                  bottom: 87),
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
                                                                      .InterMedium15)
                                                        ]))),
                                            CustomTextFormField(
                                                width: 315,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitNumberController,
                                                hintText:
                                                    "lbl_rabbit_number".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 37,
                                                    right: 5),
                                                variant: TextFormFieldVariant
                                                    .OutlineGray500,
                                                alignment:
                                                    Alignment.centerRight,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isNumeric(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid number";
                                                  }
                                                  return null;
                                                }),
                                            CustomTextFormField(
                                                width: 315,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitTypeController1,
                                                hintText: "lbl_rabbit_type".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 21,
                                                    right: 5),
                                                variant: TextFormFieldVariant
                                                    .OutlineGray500,
                                                alignment:
                                                    Alignment.centerRight),
                                            CustomTextFormField(
                                                width: 315,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .rabbitBreedController1,
                                                hintText: "lbl_rabbit_breed".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 21,
                                                    right: 5),
                                                variant: TextFormFieldVariant
                                                    .OutlineGray500,
                                                alignment:
                                                    Alignment.centerRight),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 25,
                                                        top: 21,
                                                        right: 7),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 7,
                                                                      bottom:
                                                                          6),
                                                              decoration: AppDecoration
                                                                  .txtOutlineGray500
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder15),
                                                              child: Text(
                                                                  "lbl_height"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
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
                                                              margin: getMargin(
                                                                  left: 7),
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 7,
                                                                      bottom:
                                                                          6),
                                                              decoration: AppDecoration
                                                                  .txtOutlineGray500
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder15),
                                                              child: Text(
                                                                  "lbl_width"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
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
                                                              margin: getMargin(
                                                                  left: 7),
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 7,
                                                                      bottom:
                                                                          6),
                                                              decoration: AppDecoration
                                                                  .txtOutlineGray500
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder15),
                                                              child: Text(
                                                                  "lbl_weight"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular14
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              0.25,
                                                                          height:
                                                                              1.43)))
                                                        ]))),
                                            CustomTextFormField(
                                                width: 315,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .datepfAcquisaController,
                                                hintText:
                                                    "msg_date_of_acquisa".tr,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 21,
                                                    right: 5),
                                                variant: TextFormFieldVariant
                                                    .OutlineGray500,
                                                textInputAction:
                                                    TextInputAction.done,
                                                alignment:
                                                    Alignment.centerRight)
                                          ])))
                            ])))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.sellARabbitScreen);
  }
}
