import 'controller/rabbit_generated_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/widgets/custom_button.dart';

class RabbitGeneratedInfoScreen
    extends GetWidget<RabbitGeneratedInfoController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                          height: getVerticalSize(414.00),
                          width: getHorizontalSize(320.00),
                          margin: getMargin(left: 20, top: 47, right: 20),
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.bluegray100,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(15.00))),
                              child: Stack(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding:
                                            getPadding(top: 61, bottom: 61),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle2362,
                                            height: getVerticalSize(281.00),
                                            width: getHorizontalSize(320.00))))
                              ]))),
                      Container(
                          width: double.infinity,
                          margin: getMargin(left: 20, top: 28, right: 20),
                          decoration: AppDecoration.fillAmberA100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: getHorizontalSize(152.00),
                                        margin: getMargin(
                                            left: 17,
                                            top: 13,
                                            right: 17,
                                            bottom: 38),
                                        child: Text("msg_breed_californ".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular20
                                                .copyWith())))
                              ])),
                      CustomButton(
                          width: 267,
                          text: "lbl_done".tr,
                          margin: getMargin(all: 20),
                          onTap: onTapBtnDone)
                    ]))))));
  }

  onTapBtnDone() {
    Get.toNamed(AppRoutes.editDetailsScreen);
  }
}
