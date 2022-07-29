import 'controller/check_rabbits_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
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
                              alignment: Alignment.topLeft,
                              child: Container(
                                  margin: getMargin(
                                      left: 5, top: 18, right: 10, bottom: 18),
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
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapImgBack();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 5),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgBack,
                                                                  height:
                                                                      getVerticalSize(
                                                                          28.00),
                                                                  width: getHorizontalSize(
                                                                      48.00)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 6),
                                                          child: Text(
                                                              "lbl_rabbits".tr,
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
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 10, top: 30),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapAddarabbitbu();
                                                          },
                                                          child: Container(
                                                              decoration: AppDecoration
                                                                  .fillAmberA100
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder11),
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                15,
                                                                            top:
                                                                                9,
                                                                            bottom:
                                                                                9),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgStar,
                                                                            height: getVerticalSize(21.00),
                                                                            width: getHorizontalSize(30.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                13,
                                                                            top:
                                                                                12,
                                                                            right:
                                                                                21,
                                                                            bottom:
                                                                                19),
                                                                        child: Text(
                                                                            "lbl_add_a_rabbit"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: AppStyle.txtAbelRegular15.copyWith()))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  41.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  150.00),
                                                          margin: getMargin(
                                                              left: 10),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: GestureDetector(
                                                                        onTap: () {
                                                                          onTapColumndeletearabbit();
                                                                        },
                                                                        child: Container(
                                                                            decoration: AppDecoration.fillAmberA100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 16, top: 12, right: 16, bottom: 12), child: Text("lbl_delete_a_rabbit".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAbelRegular15.copyWith())))
                                                                            ])))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                10,
                                                                            top:
                                                                                10,
                                                                            right:
                                                                                10),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgTrash,
                                                                            height: getVerticalSize(38.00),
                                                                            width: getHorizontalSize(32.00))))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapRabbitprofile();
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 20,
                                                        top: 34,
                                                        right: 4),
                                                    decoration: AppDecoration
                                                        .outlineBlack900
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder5),
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
                                                                      37.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 5,
                                                                      top: 18,
                                                                      right:
                                                                          167,
                                                                      bottom:
                                                                          19),
                                                              child: Text(
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
                                                                      .copyWith()))
                                                        ]))))
                                      ])))
                        ]))))));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  onTapAddarabbitbu() {
    Get.toNamed(AppRoutes.scanScreen);
  }

  onTapColumndeletearabbit() {
    Get.bottomSheet(
      DeleteARabbitBottomsheet(
        Get.put(
          DeleteARabbitController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapRabbitprofile() {
    Get.toNamed(AppRoutes.selectedRabbitScreen);
  }
}
