import 'package:flutter/material.dart';

class LetsInButtonModel {
  late String text;
  late VoidCallback onTap;
  String? iconPath;

  LetsInButtonModel({
    required this.onTap,
    required this.text,
    this.iconPath,
  });
}

class LetsInTextFieldModel {
  late bool isVisible;
  late String hint;
  late TextEditingController controller;
  late String iconPath;
  late bool isPassword;
  late bool isFocused;

  LetsInTextFieldModel({
    required this.controller,
    required this.iconPath,
    required this.hint,
    required this.isPassword,
    this.isFocused = false,
    this.isVisible = false,
  });
}
