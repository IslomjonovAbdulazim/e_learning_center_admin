import 'package:flutter/material.dart';

class Texts {
  Texts._();

  static Texts instance = Texts._();

  String greeting = "Welcome to";

  String letsIn = "Let's you in";

  String appName = "eShoes";

  String loginAccount = "Login to Your Account";

  String createAccount = "Create Your Account";

  String onBoardingNext = "Next";
  String onBoardingGetStarted = "Get Started";
  String continueWithFacebook = "Continue with Facebook";
  String continueWithGoogle = "Continue with Google";
  String continueWithApple = "Continue with Apple";

  String withPassword = "Sign in with password";

  String signUp = "Sign up";

  String signIn = "Sign in";
  String or = "or";
  String equal = "=";
  String signInOr = "or continue with";
  String des = "Description";
  String size = "Size";
  String color = "Color";
  String totalPrice = "Total price";
  String removeFromCart = "Remove from cart?";

  String forgotThePassword = "Forgot the password?";
  String quantity = "Quantity";
  String cancel = "Cancel";
  String yesRemove = "Yes remove";

  String doNotHaveAnAccount = "Don't have na account? ";
  String specialOffers = "Special Offers";
  String seeAll = "See All";
  String alreadyHaveAccount = "Already have an account? ";
  String postPopular = "Most Popular";
  String checkout = "Checkout";
  String addToCart = "Add to Cart";
  String search = "Search";
  String fullName = "Full Name";
  String nickName = "Nickname";
  String dateOfBirth = "Date of Birth";
  String email = "Email";
  String phoneNumber = "Phone Number";
  String gender = "Gender";
}


class DateTexts {
  late String today;
  late String yesterday;
  late String tomorrow;
  late String monday;
  late String tuesday;
  late String wednesday;
  late String thursday;
  late String friday;
  late String saturday;
  late String sunday;
  late List<String> days;
  late List<String> month;
  late String january;
  late String february;
  late String march;
  late String april;
  late String may;
  late String june;
  late String july;
  late String august;
  late String september;
  late String october;
  late String november;
  late String december;

  static DateTexts instance = DateTexts._();

  DateTexts._() {
    today = "Today";
    yesterday = "Yesterday";
    tomorrow = "Tomorrow";

    monday = "Monday";
    tuesday = "Tuesday";
    wednesday = "Wednesday";
    thursday = "Thursday";
    friday = "Friday";
    saturday = "Saturday";
    sunday = "Sunday";

    january = "January";
    february = "February";
    march = "March";
    april = "April";
    may = "May";
    june = "June";
    july = "July";
    august = "August";
    september = "September";
    october = "October";
    november = "November";
    december = "December";

    days = [
      monday,
      tuesday,
      wednesday,
      thursday,
      friday,
      saturday,
      sunday,
    ];

    month = [
      january,
      february,
      march,
      april,
      march,
      june,
      july,
      august,
      september,
      october,
      november,
      december,
    ];
  }
}