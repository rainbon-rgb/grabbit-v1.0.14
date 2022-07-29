import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingTB15:
        return getPadding(
          left: 12,
          top: 12,
          right: 12,
          bottom: 15,
        );
      case ButtonPadding.PaddingT13:
        return getPadding(
          left: 12,
          top: 13,
          right: 12,
          bottom: 12,
        );
      default:
        return getPadding(
          all: 9,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9001_2:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillAmber400:
        return ColorConstant.amber400;
      default:
        return ColorConstant.amber400;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9001_2:
        return Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillAmber400:
        return null;
      default:
        return Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.85,
          ),
        );
      case ButtonShape.CustomBorderTL10:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.30,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.MontserratRomanMedium20:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.MontserratRomanMedium15:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoRomanRegular8:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            8,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            23,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder20,
  RoundedBorder16,
  CustomBorderTL10,
}
enum ButtonPadding {
  PaddingAll9,
  PaddingTB15,
  PaddingT13,
}
enum ButtonVariant {
  OutlineBlack900,
  OutlineBlack9001_2,
  FillAmber400,
}
enum ButtonFontStyle {
  MontserratRomanMedium23,
  MontserratRomanMedium20,
  MontserratRomanMedium15,
  RobotoRomanRegular8,
}
