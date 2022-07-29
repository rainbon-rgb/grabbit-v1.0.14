import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';

class CustomDropDown extends StatefulWidget {
  CustomDropDown(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.focusNode,
      this.icon,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.items,
      this.onChanged,
      this.validator});

  DropDownShape? shape;

  DropDownPadding? padding;

  DropDownVariant? variant;

  DropDownFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  FocusNode? focusNode;

  Widget? icon;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  List<SelectionPopupModel>? items;

  Function(SelectionPopupModel)? onChanged;

  FormFieldValidator<SelectionPopupModel>? validator;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildDropDownWidget(),
          )
        : _buildDropDownWidget();
  }

  _buildDropDownWidget() {
    return Container(
      width: getHorizontalSize(widget.width ?? 0),
      margin: widget.margin,
      child: DropdownButtonFormField<SelectionPopupModel>(
        focusNode: widget.focusNode,
        icon: widget.icon,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
        items: widget.items?.map((SelectionPopupModel item) {
          return DropdownMenuItem<SelectionPopupModel>(
            value: item,
            child: Text(
              item.title,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: (value) {
          widget.onChanged!(value!);
        },
        validator: widget.validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: widget.hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      prefixIcon: widget.prefix,
      prefixIconConstraints: widget.prefixConstraints,
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.black90060,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (widget.shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (widget.variant) {
      case DropDownVariant.OutlineBlack9001e:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black9001e,
            width: 1,
          ),
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black9001e,
            width: 1,
          ),
        );
    }
  }

  _setFilled() {
    switch (widget.variant) {
      case DropDownVariant.OutlineBlack9001e:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (widget.padding) {
      default:
        return getPadding(
          all: 15,
        );
    }
  }
}

enum DropDownShape {
  RoundedBorder15,
}
enum DropDownPadding {
  PaddingAll15,
}
enum DropDownVariant {
  OutlineBlack9001e,
}
enum DropDownFontStyle {
  MontserratRomanRegular14,
}
