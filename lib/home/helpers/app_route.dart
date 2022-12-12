import 'package:case3/home/module/signupUI/sign_up.dart';
import 'package:case3/home/module/signupUI/terms_conditions.dart';
import 'package:case3/home/module/splash_screen/splash_screen.dart';
import 'package:case3/home/module/tutorial_page/view/tutorialpage.dart';
import 'package:case3/home/module/user_detail/view/user_detail.dart';
import 'package:case3/home/module/user_list/view/user_list.dart';
import 'package:case3/home/module/welcome_page/welcome_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // Route name constants
  static const String splashScreen = '/splashScreen';
  static const String loginScreen = '/loginScreen';
  static const String userdetail = '/userdetail';
  static const String userListScreen = '/userListScreen';
  static const String termsandConditions='/termsandConditions';
  static const String welcomepage='/welcomepage';
  static const String tutorialpage='/tutorialpage';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splashScreen: (context) => const Splashscreen(),
      loginScreen: (context) => const SignupPage(),
      userListScreen: (context) => const UserListScreen(),
      userdetail: (context) => const UserDetail(),
      termsandConditions:(context) => const TermsandConditions(),
      welcomepage:(context) => const WelcomeScreen(),
      tutorialpage:(context) => const TutorialPage(),
    };
  }
}
