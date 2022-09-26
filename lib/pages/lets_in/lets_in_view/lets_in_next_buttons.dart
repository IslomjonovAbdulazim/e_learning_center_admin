import 'package:e_learning_center_admin/utils/colors.dart';
import 'package:flutter/material.dart';

import '../lets_in_model.dart';

class LetsInNextButtons extends StatelessWidget {
  final LetsInButtonModel info;

  const LetsInNextButtons({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c= AppColors.instance;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: c.mainButtonBG,
        shape: const StadiumBorder(),
        fixedSize: Size(MediaQuery.of(context).size.width, 55),
      ),
      onPressed: info.onTap,
      child: Text(
        info.text,
        style: TextStyle(
          color: c.mainButtonText,
          fontSize: 16,
        ),
      ),
    );
  }
}
