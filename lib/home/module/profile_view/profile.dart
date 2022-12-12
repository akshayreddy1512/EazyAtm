import 'package:case3/home/app_preferences/preference.dart';
import 'package:case3/home/helpers/app_localization.dart';
import 'package:case3/home/model/user_model.dart';
import 'package:case3/home/module/signupUI/sign_up.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    UserModel? userModel = Preference.getUserData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile '),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name: ${userModel?.name ?? ''}'),
          Text('Email: ${userModel?.email ?? ''}'),
          Text('Profile Image: ${userModel?.profileImage ?? ''}'),
          Text('Phone Number: ${userModel?.phoneNumber ?? ''}'),
          ElevatedButton(
              onPressed: () {
                SignOutMethod(context);
              },
              child: const Text(AppLocalization.Signout))
        ],
      ),
    );
  }
}
