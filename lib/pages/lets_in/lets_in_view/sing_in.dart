import 'package:e_learning_center_admin/utils/txt.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/colors.dart';
import '../lets_in_view_model.dart';
import 'lets_in_in_continue_buttons.dart';
import 'lets_in_next_buttons.dart';
import 'lets_in_text_fields.dart';
import 'sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LetsInViewModel(),
      child: Consumer<LetsInViewModel>(
        builder: (BuildContext context, model, Widget? child) {
          final t = Texts.instance;
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: AppColors.instance.bg,
                elevation: 0,
                iconTheme: IconThemeData(
                  color: AppColors.instance.mainText,
                ),
              ),
              backgroundColor: AppColors.instance.bg,
              body: ListView(
                physics: const BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 150,
                          width: 150,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Text(
                          t.loginAccount,
                          style: TextStyle(
                            color: AppColors.instance.mainText,
                            fontWeight: FontWeight.bold,
                            fontSize: 32.5,
                          ),
                        ),
                      ),
                      ...List.generate(
                        model.getSignInInfo.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: LetsInTextFields(
                            info: model.getSignInInfo[index],
                            index: index,
                            changeVisible: () {
                              model.changeVisible(index);
                            },
                            onFocusChange: (bool bl, int index) {
                              model.onFocusChangeSingIn(bl, index);
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: LetsInNextButtons(
                          info: model.getSignIn,
                        ),
                      ),
                      Text(
                        t.forgotThePassword,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.instance.mainText,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
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
                             t.signInOr,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: model.getSignInButtonsInfo
                            .map(
                              (info) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: SignInContinueButtons(info: info),
                              ),
                            )
                            .toList(),
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
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => model.openR(
                                        context,
                                        const SignUp(),
                                      ),
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
