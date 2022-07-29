import 'controller/check_rabbits_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/widgets/custom_button.dart';
import 'package:grabbit/presentation/delete_a_rabbit_bottomsheet/delete_a_rabbit_bottomsheet.dart';
import 'package:grabbit/presentation/delete_a_rabbit_bottomsheet/controller/delete_a_rabbit_controller.dart';

class CheckRabbitsScreen extends GetWidget<CheckRabbitsController> {
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
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgBack,
                                                          height:
                                                              getVerticalSize(
                                                                  28.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  48.00)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 6),
                                                          child: Text(
                                                              "lbl_rabbit".tr,
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
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 11, top: 27),
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
                                                      CustomButton(
                                                          width: 151,
                                                          text:
                                                              "lbl_add_a_rabbit"
                                                                  .tr,
                                                          variant: ButtonVariant
                                                              .FillAmber400,
                                                          shape: ButtonShape
                                                              .RoundedBorder12,
                                                          fontStyle:
                                                              ButtonFontStyle
                                                                  .AbelRegular20,
                                                          onTap:
                                                              onTapBtnAddarabbit),
                                                      CustomButton(
                                                          width: 151,
                                                          text:
                                                              "lbl_delete_a_rabbit"
                                                                  .tr,
                                                          variant: ButtonVariant
                                                              .FillAmber400,
                                                          shape: ButtonShape
                                                              .RoundedBorder12,
                                                          fontStyle:
                                                              ButtonFontStyle
                                                                  .AbelRegular20,
                                                          onTap:
                                                              onTapBtnDeletearabbit)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapRabbitcontaine();
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 11, top: 63),
                                                    decoration: AppDecoration
                                                        .outlineBlack900
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
                                                                          .imgCalifornianrab,
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

  onTapBtnAddarabbit() {
    Get.toNamed(AppRoutes.scanScreen);
  }

  onTapBtnDeletearabbit() {
    Get.bottomSheet(
      DeleteARabbitBottomsheet(
        Get.put(
          DeleteARabbitController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapRabbitcontaine() {
    Get.toNamed(AppRoutes.selectedRabbitScreen);
  }
}
