import 'package:e_learning_center_admin/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../lets_in_model.dart';

class LetsInTextFields extends StatelessWidget {
  final int index;
  final VoidCallback changeVisible;
  final LetsInTextFieldModel info;
  final Function(bool bl, int index) onFocusChange;

  const LetsInTextFields({
    Key? key,
    required this.index,
    required this.onFocusChange,
    required this.info,
    required this.changeVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = AppColors.instance;
    return Focus(
      onFocusChange: (bool bl) {
        onFocusChange(bl, index);
      },
      child: TextFormField(
        obscureText: !info.isVisible,
        style: TextStyle(
          color: c.mainText,
        ),
        cursorColor: c.mainText,
        decoration: InputDecoration(
          filled: true,
          fillColor: c.textFieldFilled,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          hintText: info.hint,
          hintStyle: TextStyle(
            color: c.textFieldIconUnfocused,
          ),
          prefixIconConstraints: const BoxConstraints(),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              right: 10,
            ),
            child: SvgPicture.asset(
              info.iconPath,
              height: 25,
              color: info.isFocused
                  ? c.textFieldIconFocudes
                  : c.textFieldIconUnfocused,
            ),
          ),
          suffixIcon: info.isPassword
              ? Padding(
                  padding: const EdgeInsets.all(5),
                  child: IconButton(
                    splashColor: Colors.transparent,
                    onPressed: changeVisible,
                    icon: Icon(
                      info.isVisible
                          ? CupertinoIcons.eye_solid
                          : CupertinoIcons.eye_slash_fill,
                      color: info.isFocused
                          ? c.textFieldIconFocudes
                          : c.textFieldIconUnfocused,
                    ),
                  ),
                )
              : null,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.instance.textFieldBorder,
            ),
          ),
        ),
      ),
    );
  }
}
