import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../lets_in_model.dart';

class LetsInUpContinueButtons extends StatelessWidget {
  final LetsInButtonModel info;

  const LetsInUpContinueButtons({
    Key? key,
    required this.info,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        info.iconPath!,
        height: 25,
      ),
      label: Text(info.text),
    );
  }
}
