import 'package:flutter/material.dart';

class AppColors {
  final bool _isLight = true;

  AppColors._();

  bool get getIsLight => _isLight;

  static AppColors instance = AppColors._();

  Color get mainButtonBG {
    if (_isLight) return const Color(0xff101010);
    return const Color(0xffFAFAFA);
  }

  Color get mainButtonText {
    if (_isLight) return const Color(0xffFFFFFF);
    return const Color(0xff0A0F11);
  }

  Color get mainText {
    if (_isLight) return const Color(0xff212121);
    return const Color(0xfffFFFFF);
  }

  Color get currentIndicator {
    if (_isLight) return const Color(0xff212121);
    return const Color(0xffE5E5E5);
  }

  Color get indicator {
    if (_isLight) return const Color(0xffE1E1E1);
    return const Color(0xff37383E);
  }

  Color get greetingAppText {
    if (_isLight) return const Color(0xffFFFFFF);
    return const Color(0xffFFFFFf);
  }

  Color get bg {
    if (_isLight) return const Color(0xffFFFFFF);
    return const Color(0xff181A21);
  }

  Color get textFieldFilled {
    if (_isLight) return const Color(0xffFAFAFA);
    return const Color(0xff20222A);
  }

  Color get unselectableButtonBG {
    if (_isLight) return const Color(0xff393939);
    return const Color(0xff393939);
  }

  Color get textFieldIconUnfocused {
    if (_isLight) return const Color(0xff9E9E9E);
    return const Color(0xff9F9FA0);
  }

  Color get textFieldIconFocudes {
    if (_isLight) return const Color(0xff101010);
    return const Color(0xffFFFFFF);
  }

  Color get textFieldBorder {
    if (_isLight) return const Color(0xff3A3B3F);
    return const Color(0xffE6E6E6);
  }

  Color get secondaryText {
    if (_isLight) return const Color(0xffA0A0A0);
    return const Color(0xffF6F6F6);
  }

  Color get subtitle {
    if (_isLight) return const Color(0xff5F5F5F);
    return const Color(0xffF5F5F5);
  }

  Color get outlinedButtonBG {
    if (_isLight) return const Color(0xffFFFFFF);
    return const Color(0xff20222A);
  }

  Color get buttonRadius {
    if (_isLight) return const Color(0xffEEEEEE);
    return const Color(0xff34373F);
  }

  Color get profileBG {
    if (_isLight) return const Color(0xffF5F5F8);
    return const Color(0xff464648);
  }

  Color get profile {
    if (_isLight) return const Color(0xffE9E9F0);
    return const Color(0xff35363A);
  }

  Color get itemBG {
    if (_isLight) return const Color(0xffFFFFFF);
    return const Color(0xff20222A);
  }

  Color get notificationBG {
    if (_isLight) return const Color(0xffFDFDFD);
    return const Color(0xff181A1F);
  }

  Color get productBG {
    if (_isLight) return const Color(0xffF3F3F3);
    return const Color(0xff353840);
  }

  Color get soldBG {
    if (_isLight) return const Color(0xffEDEDED);
    return const Color(0xff353840);
  }

  Color get selectedCategoryBG {
    if (_isLight) return const Color(0xff101010);
    return const Color(0xff353840);
  }

  Color get categoryItemBG {
    if (_isLight) return const Color(0xffECECEC);
    return const Color(0xff353840);
  }

  Color get available {
    if (_isLight) return const Color(0xff707070);
    return const Color(0xff9C9C9D);
  }

  Color get checkWhite {
    if (_isLight) return const Color(0xffFFFFFF);
    return const Color(0xffFFFFFF);
  }

  Color get checkBlack {
    if (_isLight) return const Color(0xff212121);
    return const Color(0xff191B20);
  }
}
