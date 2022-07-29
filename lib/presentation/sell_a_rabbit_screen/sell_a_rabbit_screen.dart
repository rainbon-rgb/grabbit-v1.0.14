import 'controller/sell_a_rabbit_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';

class SellARabbitScreen extends GetWidget<SellARabbitController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  margin: getMargin(
                                      left: 7, top: 27, right: 10, bottom: 27),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: size.width,
                                                margin: getMargin(right: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapImgBack();
                                                          },
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgBack,
                                                              height:
                                                                  getVerticalSize(
                                                                      28.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      48.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 75,
                                                              bottom: 6),
                                                          child: Text(
                                                              "lbl_sell_a_rabbit"
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
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin: getMargin(
                                                    left: 11,
                                                    top: 36,
                                                    right: 11),
                                                decoration: AppDecoration
                                                    .fillAmber400
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder11),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 11,
                                                              bottom: 10),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgCamera,
                                                              height:
                                                                  getVerticalSize(
                                                                      24.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      23.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 12,
                                                              bottom: 14),
                                                          child: Text(
                                                              "lbl_scan_qr_code"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtAbelRegular20
                                                                  .copyWith()))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 11,
                                                    top: 29,
                                                    right: 11),
                                                child: Text(
                                                    "msg_recommended_rab".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular19
                                                        .copyWith()))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapRabbitcontaine();
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 11, top: 28),
                                                    decoration: AppDecoration
                                                        .outlineBlack90012
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder30),
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
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 14,
                                                                      bottom:
                                                                          15),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImgarabbitone,
                                                                  height:
                                                                      getVerticalSize(
                                                                          30.00),
                                                                  width: getHorizontalSize(
                                                                      39.00))),
                                                          Container(
                                                              margin: getMargin(
                                                                  left: 21,
                                                                  top: 15,
                                                                  right: 165,
                                                                  bottom: 15),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_rabbit_1001"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular15
                                                                            .copyWith()),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            right:
                                                                                10),
                                                                        child: Text(
                                                                            "lbl_view_details"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular8.copyWith(decoration: TextDecoration.underline)))
                                                                  ]))
                                                        ]))))
                                      ])))
                        ]))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  onTapRabbitcontaine() {
    Get.toNamed(AppRoutes.rabbitDetailsForMeatSellingScreen);
  }
}
