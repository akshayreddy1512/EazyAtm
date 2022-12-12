import 'package:case3/home/app_preferences/preference.dart';
import 'package:case3/home/helpers/app_route.dart';
import 'package:case3/home/model/user_model.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _navigateToTutorial(context);
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images1/Ea.JPG',
            ),
            const SizedBox(
              height: 45,
            ),
            const Text(
              'Eazy ATM',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _navigateToTutorial(BuildContext context) {
    UserModel? userModel = Preference.getUserData();
    Future.delayed(const Duration(milliseconds: 1000), () {
      if (userModel == null) {
        bool isTutorialViewed = Preference.isTutorialViewed ?? false;
        if (isTutorialViewed) {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(AppRoutes.welcomepage, (route) => false);
        } else {
          Navigator.of(context).pushNamedAndRemoveUntil(
              AppRoutes.tutorialpage, (route) => false);
        }
      } else {
        Navigator.of(context).pushNamedAndRemoveUntil(
            AppRoutes.userListScreen, (route) => false);
      }
    });
  }
}
