import 'package:e_learning_center_admin/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../lets_in_model.dart';

class LetsInInContinueButtons extends StatelessWidget {
  final LetsInButtonModel info;

  const LetsInInContinueButtons({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = AppColors.instance;
    return OutlinedButton.icon(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(c.outlinedButtonBG),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: c.buttonRadius,
            ),
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(MediaQuery.of(context).size.width, 55),
        ),
      ),
      onPressed: info.onTap,
      label: Text(
        info.text,
        style: TextStyle(
          color: c.mainText,
        ),
      ),
      icon: SvgPicture.asset(
        info.iconPath!,
        height: 25,
      ),
    );
  }
}

class SignInContinueButtons extends StatelessWidget {
  final LetsInButtonModel info;

  const SignInContinueButtons({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(AppColors.instance.outlinedButtonBG),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: AppColors.instance.buttonRadius,
            ),
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(80, 55),
        ),
      ),
      onPressed: info.onTap,
      child: SvgPicture.asset(
        info.iconPath!,
        height: 25,
      ),
    );
  }
}
