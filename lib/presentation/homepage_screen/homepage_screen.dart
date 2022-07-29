import 'controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/widgets/custom_button.dart';

class HomepageScreen extends GetWidget<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillAmber400,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 61, top: 10, right: 61),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgGrabbitlogo,
                                            height: getVerticalSize(68.00),
                                            width: getHorizontalSize(170.00))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapScanRabbit();
                                        },
                                        child: Container(
                                            margin: getMargin(
                                                left: 61,
                                                top: 43,
                                                right: 61,
                                                bottom: 29),
                                            decoration: AppDecoration
                                                .outlineBlack90012
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 2, bottom: 2),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgSlrcamera,
                                                          height:
                                                              getVerticalSize(
                                                                  46.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  45.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 13,
                                                          top: 14,
                                                          bottom: 14),
                                                      child: Text(
                                                          "lbl_scan_rabbit".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRomanSemiBold22
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      1.32)))
                                                ])))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapCheckRabbits();
                          },
                          child: Container(
                              height: getVerticalSize(264.00),
                              width: getHorizontalSize(323.00),
                              margin: getMargin(left: 18, top: 28, right: 18),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(263.00),
                                            width: getHorizontalSize(322.00),
                                            margin: getMargin(left: 1, top: 1),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .bluegray100,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00))))),
                                    CustomButton(
                                        width: 323,
                                        text: "lbl_check_rabbits".tr,
                                        margin: getMargin(bottom: 10),
                                        variant: ButtonVariant.FillAmber400,
                                        shape: ButtonShape.CustomBorderTL10,
                                        padding: ButtonPadding.PaddingTB15,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRomanRegular8,
                                        onTap: onTapBtnCheckrabbits,
                                        alignment: Alignment.topLeft)
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapCheckRabbits1();
                          },
                          child: Container(
                              height: getVerticalSize(264.00),
                              width: getHorizontalSize(323.00),
                              margin: getMargin(
                                  left: 18, top: 23, right: 18, bottom: 21),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(263.00),
                                            width: getHorizontalSize(322.00),
                                            margin: getMargin(left: 1, top: 1),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .bluegray100,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00))))),
                                    CustomButton(
                                        width: 323,
                                        text: "lbl_sell_rabbit".tr,
                                        margin: getMargin(bottom: 10),
                                        variant: ButtonVariant.FillAmber400,
                                        shape: ButtonShape.CustomBorderTL10,
                                        padding: ButtonPadding.PaddingT13,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRomanRegular8,
                                        onTap: onTapBtnSellrabbit,
                                        alignment: Alignment.topLeft)
                                  ])))
                    ]))))));
  }

  onTapScanRabbit() {
    Get.toNamed(AppRoutes.scanScreen);
  }

  onTapCheckRabbits() {
    Get.toNamed(AppRoutes.checkRabbitsScreen);
  }

  onTapBtnCheckrabbits() {
    Get.toNamed(AppRoutes.checkRabbitsScreen);
  }

  onTapCheckRabbits1() {
    Get.toNamed(AppRoutes.sellARabbitScreen);
  }

  onTapBtnSellrabbit() {
    Get.toNamed(AppRoutes.sellARabbitScreen);
  }
}
