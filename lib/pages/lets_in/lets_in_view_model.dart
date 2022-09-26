import 'package:e_learning_center_admin/utils/txt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/icons.dart';
import 'lets_in_model.dart';
import 'lets_in_view/sing_in.dart';

class LetsInViewModel extends ChangeNotifier {
  late List<LetsInButtonModel> _signInButtonsInfo;
  late List<LetsInTextFieldModel> _signInFields;
  late TextEditingController _emailTEC;
  late TextEditingController _passwordTEC;
  late BuildContext context;

  LetsInViewModel() {
    final t = Texts.instance;
    final ic = Ic.instance;
    _emailTEC = TextEditingController();
    _passwordTEC = TextEditingController();
    _signInFields = [
      LetsInTextFieldModel(
        controller: _emailTEC,
        iconPath: ic.email,
        hint: "Email",
        isPassword: false,
      ),
      LetsInTextFieldModel(
        controller: _passwordTEC,
        iconPath: ic.lock,
        hint: "Password",
        isPassword: true,
      ),
    ];
    _signInButtonsInfo = [
      LetsInButtonModel(
        onTap: () {},
        text: t.continueWithFacebook,
        iconPath: ic.facebook,
      ),
      LetsInButtonModel(
        onTap: () {},
        text: t.continueWithGoogle,
        iconPath: ic.google,
      ),
      LetsInButtonModel(
        onTap: () {},
        text: t.continueWithApple,
        iconPath: ic.apple,
      ),
    ];
  }

  void open(context, Widget page) {
    Navigator.push(
      context,
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return page;
          },
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1, 0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          }),
    );
  }

  void openR(context, Widget page) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return page;
          },
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1, 0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          }),
    );
  }

  void onFocusChangeSingIn(bool bl, int index) {
    _signInFields[index].isFocused = bl;
    notifyListeners();
  }

  void changeVisible(int index) {
    _signInFields[index].isVisible = !_signInFields[index].isVisible;
    notifyListeners();
  }

//getters
  List<LetsInButtonModel> get getSignInButtonsInfo => _signInButtonsInfo;

  LetsInButtonModel get getNextSingInPassword => LetsInButtonModel(
        onTap: () {
          open(
            context,
            const SignIn(),
          );
        },
        text: Texts.instance.withPassword,
      );

  LetsInButtonModel get getSignIn => LetsInButtonModel(
        onTap: () {
          // _open(
          //   context,
          //   const SignIn(),
          // );
        },
        text: Texts.instance.signIn,
      );

  LetsInButtonModel get getSignUp => LetsInButtonModel(
        onTap: () {
          // _open(
          //   context,
          //   const SignIn(),
          // );
        },
        text: Texts.instance.signUp,
      );

  List<LetsInTextFieldModel> get getSignInInfo => _signInFields;
}
