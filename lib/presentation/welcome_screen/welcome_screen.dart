import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray300,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(bottom: 6),
                                  child: CommonImageView(
                                      imagePath: ImageConstant.imgRectangle20,
                                      height: getVerticalSize(794.00),
                                      width: getHorizontalSize(360.00)))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      getPadding(top: 2, right: 10, bottom: 10),
                                  child: CommonImageView(
                                      imagePath: ImageConstant.imgImagewhiteone,
                                      height: getVerticalSize(607.00),
                                      width: getHorizontalSize(310.00)))),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                  padding: getPadding(left: 10, top: 10),
                                  child: CommonImageView(
                                      imagePath: ImageConstant.imgRectangle3,
                                      height: getVerticalSize(571.00),
                                      width: getHorizontalSize(276.00)))),
                          Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapImgGrabbitlogo();
                                  },
                                  child: Padding(
                                      padding: getPadding(
                                          left: 10,
                                          top: 306,
                                          right: 9,
                                          bottom: 306),
                                      child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgGrabbitlogo,
                                          height: getVerticalSize(138.00),
                                          width: getHorizontalSize(320.00)))))
                        ]))))));
  }

  onTapImgGrabbitlogo() {
    Get.toNamed(AppRoutes.homepageScreen);
  }
}
