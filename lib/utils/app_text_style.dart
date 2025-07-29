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
    fontSize: fontSize.fontSize_14,
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

// product screen style

TextStyle productTitle() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w800,
    fontSize: fontSize.fontSize_20,
    color: appColor.AppColor_black,
  );
}

TextStyle productContainerText() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_16,
    color: appColor.AppColor_black,
  );
}

TextStyle productContainerSubText() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_14,
    color: appColor.softGray,
  );
}

TextStyle productBtnStyle() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_14,
    color: appColor.bgWhite,
  );
}

TextStyle stockHistoryText() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w800,
    fontSize: fontSize.fontSize_20,
    color: appColor.AppColor_black,
  );
}

TextStyle categoryName() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_16,
    color: appColor.AppColor_black,
  );
}

TextStyle categoryPrice() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_16,
    color: appColor.AppColor_black,
  );
}

TextStyle categoryDate() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_12,
    color: appColor.softGray,
  );
}

// vendor  screen textstyle

TextStyle searchvendorText() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w100,
    fontSize: fontSize.fontSize_16,
    color: appColor.softGray,
  );
}

TextStyle searchvendorInputText() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: 8,
    color: appColor.AppColor_black,
  );
}

// vendor screen style

TextStyle vendorCompany() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
    fontSize: fontSize.fontSize_16,
    color: appColor.AppColor_black,
  );
}

TextStyle vendorOtherData() {
  return TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    fontSize: fontSize.fontSize_14,
    color: appColor.softGray,
  );
}
