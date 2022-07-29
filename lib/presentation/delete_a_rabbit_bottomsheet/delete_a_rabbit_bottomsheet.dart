import 'controller/delete_a_rabbit_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/widgets/custom_button.dart';
import 'package:grabbit/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class DeleteARabbitBottomsheet extends StatelessWidget {
  DeleteARabbitBottomsheet(this.controller);

  DeleteARabbitController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: double.infinity,
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    getPadding(left: 15, top: 16, right: 15),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            onTapImgBack();
                                          },
                                          child: CommonImageView(
                                              imagePath: ImageConstant.imgBack,
                                              height: getVerticalSize(28.00),
                                              width: getHorizontalSize(48.00))),
                                      Padding(
                                          padding:
                                              getPadding(left: 49, bottom: 2),
                                          child: Text("lbl_delete_a_rabbit2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold20
                                                  .copyWith()))
                                    ]))),
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(352.00),
                            margin: getMargin(left: 15, top: 23, right: 15),
                            decoration:
                                BoxDecoration(color: ColorConstant.black9001e)),
                        CustomDropDown(
                            width: 301,
                            focusNode: FocusNode(),
                            icon: Container(
                                margin: getMargin(left: 30, right: 14),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgVector)),
                            hintText: "msg_select_a_rabbit".tr,
                            margin: getMargin(left: 15, top: 28, right: 15),
                            alignment: Alignment.center,
                            items: controller
                                .deleteARabbitModelObj.value.dropdownItemList,
                            onChanged: (value) {
                              controller.onSelected(value);
                            }),
                        CustomButton(
                            width: 175,
                            text: "lbl_save".tr,
                            margin: getMargin(left: 15, top: 116, right: 15),
                            shape: ButtonShape.RoundedBorder16,
                            fontStyle: ButtonFontStyle.MontserratRomanMedium15,
                            alignment: Alignment.center),
                        CustomButton(
                            width: 175,
                            text: "lbl_done".tr,
                            margin: getMargin(
                                left: 15, top: 21, right: 15, bottom: 20),
                            variant: ButtonVariant.OutlineBlack9001_2,
                            shape: ButtonShape.RoundedBorder16,
                            fontStyle: ButtonFontStyle.MontserratRomanMedium15,
                            onTap: onTapBtnDone,
                            alignment: Alignment.center)
                      ])))
        ])));
  }

  onTapImgBack() {
    Get.toNamed(AppRoutes.checkRabbitsScreen);
  }

  onTapBtnDone() {
    Get.toNamed(AppRoutes.checkRabbitsScreen);
  }
}
