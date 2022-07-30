import 'controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';

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
                                                top: 42,
                                                right: 61,
                                                bottom: 30),
                                            decoration: AppDecoration
                                                .outlineBlack900
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
                              width: double.infinity,
                              margin: getMargin(left: 19, top: 24, right: 19),
                              decoration: AppDecoration.fillAmberA100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 12,
                                                top: 11,
                                                right: 12,
                                                bottom: 234),
                                            child: Text("lbl_check_rabbits".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRomanRegular15
                                                    .copyWith(
                                                        letterSpacing: 0.90))))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapCheckRabbits1();
                          },
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                  left: 19, top: 21, right: 17, bottom: 29),
                              decoration: AppDecoration.fillAmberA100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21,
                                                top: 12,
                                                right: 21,
                                                bottom: 20),
                                            child: Text("lbl_sell_a_rabbit".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoRomanRegular15
                                                    .copyWith(
                                                        letterSpacing: 0.90))))
                                  ])))
                    ]))))));
  }

  onTapScanRabbit() {
    Get.toNamed(AppRoutes.scanScreen);
  }

  onTapCheckRabbits() {
    Get.toNamed(AppRoutes.checkRabbitsScreen);
  }

  onTapCheckRabbits1() {
    Get.toNamed(AppRoutes.sellARabbitScreen);
  }
}
