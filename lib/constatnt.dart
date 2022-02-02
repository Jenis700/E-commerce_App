import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFFF7643),
    Color(0xFFFF7643),
  ],
);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: getProportionateScreenWidth(28),
  height: 1.5,
);

// form ni errors
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

final RegExp passwordValidatorRegExp = RegExp('[!@#%^&*(),.?":{}|<>]');

const String kEmailNullError = "Please Enter your email";
const String kInvalidError = "Please Enter valid email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password id too short";
const String kMatchPassError = "Password don't match";
const String kLastNameNullError = "Please Enter your Last name";
const String kFirstNameNullError = "Please Enter your First name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kPhoneNumberWrongError = "Please Enter your Valid phone number";
const String kAddressNullError = "Please Enter your address";
const String kSrongPassError = "Please Enter strong password";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}
