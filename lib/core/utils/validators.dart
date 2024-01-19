import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:regexpattern/regexpattern.dart';

class Validator {
  static bool defaultValidator(String? value) => value == null || value.isEmpty;


  static String? emailValidator(String value) {
    if (value.isEmpty) return "Please Enter Your Email Address".tr();
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return "Enter a Valid Email Address".tr();
    } else {
      return null;
    }
  }

  static String? phoneNumberValidator(String value) {
    Pattern pattern = r'(\d{10})';
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return "Enter a valid phone number";
    } else {
      return null;
    }
  }

  static String? phoneNumberValidator2(String value) {
    if (!value.isPhone()) {
      return "enter_valid_number";
    } else {
      return null;
    }
  }

  static String? ageValidator(String value) {
    if (value.isEmpty) return "required";
    if (num.tryParse(value) == null) return "enter_valid_val";
    if (int.parse(value) >= 150 || int.parse(value) <= 1) {
      return 'Enter a Valid Age between 1 and 150';
    } else {
      return null;
    }
  }

  static String? hwValidator(String value) {
    if (num.tryParse(value) == null) return "enter_valid_val";
    if (int.parse(value) >= 350 || int.parse(value) <= 1) {
      return 'Enter a Valid Value between 1 and 350';
    } else {
      return null;
    }
  }

  static String? nameValidate(String value) {
    if (value.length < 2) {
      FocusManager.instance.primaryFocus!.unfocus();
      FocusManager.instance.primaryFocus!.requestFocus();
      return "too short".tr();
    } else {
      return null;
    }
  }

  static bool validatePassword(String pass) {
    RegExp passValid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
    String password = pass.trim();
    if (passValid.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  static String? passwordValidate(String value) {
    if (value.length < 6) {
      FocusManager.instance.primaryFocus!.unfocus();
      FocusManager.instance.primaryFocus!.requestFocus();
      return "Password is too short";
    } else {
      return null;
    }
  }

  static String? confirmPasswordValidate(String value, String value2) {
    if (value != value2) {
      return "password_not_equal".tr();
    } else {
      return null;
    }
  }

  static String? pinCodeValidate(String value) {
    if (value.length < 5) {
      FocusManager.instance.primaryFocus!.unfocus();
      FocusManager.instance.primaryFocus!.requestFocus();
      return "required".tr();
    }
    Pattern pattern = r"\d{5}";
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return "enter_valid_code".tr();
    } else {
      return null;
    }
  }

  static String? requestDescriptionValidate(String value, context) {
    if (value.length < 20) {
      FocusManager.instance.primaryFocus!.unfocus();
      FocusManager.instance.primaryFocus!.requestFocus();
      return "text_too_small".tr();
    }
    if (value.length > 170) {
      FocusManager.instance.primaryFocus!.unfocus();
      FocusManager.instance.primaryFocus!.requestFocus();
      return "text_too_large".tr();
    } else {
      return null;
    }
  }
}
