import 'controller/qr_code_generation_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/widgets/custom_button.dart';

class QrCodeGenerationScreen extends GetWidget<QrCodeGenerationController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 12, top: 18, right: 12),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgBack,
                                  height: getVerticalSize(23.00),
                                  width: getHorizontalSize(25.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(302.00),
                              width: getHorizontalSize(292.00),
                              margin: getMargin(left: 12, top: 71, right: 12),
                              decoration: AppDecoration.fillAmberA100,
                              child: Stack(children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16,
                                            top: 13,
                                            right: 16,
                                            bottom: 19),
                                        child: CommonImageView(
                                            imagePath: ImageConstant.imgImage1,
                                            height: getVerticalSize(270.00),
                                            width: getHorizontalSize(260.00))))
                              ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 12, top: 140, right: 12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(41.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomButton(
                                        width: 267,
                                        text: "lbl_download".tr,
                                        onTap: onTapBtnDownload,
                                        alignment: Alignment.centerLeft)
                                  ]))),
                      CustomButton(
                          width: 267,
                          text: "lbl_done".tr,
                          margin: getMargin(
                              left: 12, top: 25, right: 12, bottom: 20),
                          variant: ButtonVariant.OutlineBlack9001_2,
                          fontStyle: ButtonFontStyle.MontserratRomanMedium20,
                          onTap: onTapBtnDone,
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapBtnDownload() async {
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? fileList = [];
//TODO: use permission for using selected files
    FileManager().filePickerMethod(1000 * 1000, ['png', 'jpeg'],
        getFiles: (value) {
      fileList = value;
    });
  }

  onTapBtnDone() {
    Get.toNamed(AppRoutes.homepageScreen);
  }
}
