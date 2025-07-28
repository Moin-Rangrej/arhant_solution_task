import 'package:arhant_solution_task/utils/utils.dart';
import 'package:flutter/material.dart';

TextStyle labelStyle() {
  return TextStyle(
    fontFamily: "Inter",
    fontSize: fontSize.fontSize_18,
    fontWeight: FontWeight.w700,
    color: appColor.AppColor_black,
  );
}

TextStyle textfieldStyle() {
  return TextStyle(
    fontFamily: "Inter",
    fontSize: fontSize.fontSize_16,
    fontWeight: FontWeight.w700,
    color: appColor.AppColor_black,
  );
}

TextStyle appBarTextStyle() {
  return TextStyle(
    fontFamily: "Inter",
    fontSize: fontSize.fontSize_20,
    fontWeight: FontWeight.w700,
    color: appColor.primaryTextDark,
  );
}

TextStyle customHintTextStyle() {
  return TextStyle(
    fontFamily: "Inter",
    fontSize: fontSize.fontSize_14,
    fontWeight: FontWeight.w400,
    color: appColor.mutedBlueGray,
  );
}

TextStyle textButtonStyle() {
  return TextStyle(
    fontFamily: "Inter",
    fontSize: fontSize.fontSize_12,
    fontWeight: FontWeight.w400,
    color: appColor.primaryBlue,
  );
}

TextStyle customBtnStyle() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
    color: appColor.bgWhite,
  );
}

TextStyle errorTextStyle() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
    color: appColor.errorColor,
  );
}

// Edit Profile Text style

TextStyle editProfileTitle() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_16,
    color: appColor.primaryTextDark,
  );
}

TextStyle userProfileName() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
    fontSize: fontSize.fontSize_22,
  );
}

TextStyle userProfileEmail() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_16,
    color: appColor.slateIndigo,
  );
}

TextStyle editProfileText() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
    fontSize: fontSize.fontSize_16,
    color: appColor.AppColor_black,
  );
}

TextStyle stockItemTitle() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w700,
    fontSize: fontSize.fontSize_16,
    color: appColor.AppColor_black,
  );
}

TextStyle stockItemSubTitle() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_14,
    color: appColor.darkCoolGray,
  );
}

TextStyle stockContainerColor() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_12,
    color: appColor.darkCoolGray,
  );
}

TextStyle stockContainerQuantity() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_12,
    color: appColor.AppColor_black,
  );
}

TextStyle inStockText(String stockColor) {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_12,
    color: stockColor == "In Stock"
        ? appColor.appSuccessGreen
        : appColor.errorColor,
  );
}
