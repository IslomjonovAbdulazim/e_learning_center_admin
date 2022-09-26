import 'package:e_learning_center_admin/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';

import '../../utils/txt.dart';
import 'lets_in_view/lets_in_in_continue_buttons.dart';
import 'lets_in_view/lets_in_next_buttons.dart';
import 'lets_in_view_model.dart';

class LetsInPage extends StatelessWidget {
  const LetsInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LetsInViewModel(),
      child: Consumer<LetsInViewModel>(
        builder: (BuildContext context, model, Widget? child) {
          final c = AppColors.instance;
          final t = Texts.instance;
          return SafeArea(
            child: Scaffold(
              backgroundColor: c.bg,
              body: ListView(
                physics: const BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Text(
                          t.letsIn,
                          style: TextStyle(
                            color: AppColors.instance.mainText,
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                          ),
                        ),
                      ),
                      ...model.getSignInButtonsInfo.map(
                        (info) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: LetsInInContinueButtons(info: info),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 2,
                              color: AppColors.instance.buttonRadius,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 20),
                            child: Text(
                              t.or,
                              style: TextStyle(
                                color: AppColors.instance.secondaryText,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 2,
                              color: AppColors.instance.buttonRadius,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: LetsInNextButtons(
                          info: model.getNextSingInPassword,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: RichText(
                          text: TextSpan(
                            text: t.doNotHaveAnAccount,
                            style: TextStyle(
                              color: AppColors.instance.secondaryText,
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(
                                text: t.signUp,
                                style: TextStyle(
                                  color: AppColors.instance.mainText,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
