import 'package:case3/home/bloc/bloc_builder.dart';
import 'package:case3/home/model/user_model.dart';
import 'package:case3/home/module/user_detail/bloc/user_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({Key? key}) : super(key: key);
  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  final UserDetailBloc _userDetailBloc = UserDetailBloc();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      String userId = ModalRoute.of(context)?.settings.arguments as String;
      _userDetailBloc.fetchUserDetail(userId);
    });
  }

  @override
  Widget build(BuildContext context) {
    // UserModel? userModel = Preference.getUserData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile '),
      ),
      body: BlocBuilder(
        bloc: _userDetailBloc,
        builder: () {
          UserModel? userModel = _userDetailBloc.state.user;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: ${userModel?.name ?? ''}'),
              TextButton(
                  onPressed: () async {
                    _sendMail();
                  },
                  child: Text('Email: ${userModel?.email ?? ''}')),
              Text('Profile Image: ${userModel?.profileImage ?? ''}'),
              Text('Phone Number: ${userModel?.phoneNumber ?? ''}'),
            ],
          );
        },
      ),
    );
  }

  _sendMail() async {
    Uri mail = Uri.parse('mailto:info@test_drivie.com?subject=Cloning&body=');
    if (await launchUrl(mail)) {
      //email app opened
    } else {
      //email app is not opened
    }
  }
}
