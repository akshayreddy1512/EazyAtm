import 'dart:async';
import 'package:case3/home/bloc/bloc_builder.dart';
import 'package:case3/home/helpers/app_localization.dart';
import 'package:case3/home/helpers/app_route.dart';
import 'package:case3/home/model/state_model.dart';
import 'package:case3/home/module/login/bloc/login_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_sign_in/google_sign_in.dart';

// function to implement the google signin

// creating firebase instance

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width * 10,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: _buildColumn(context),
          ),
        ),
      ),
    );
  }

  Widget _buildColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          AppLocalization.easyatm,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        const Spacer(
          flex: 3,
        ),
        const Text(
          'Lorem ipsum dolor sit amet , consectetur adipiscing elit , sed do eiusomd ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black54,
          ),
        ),
        const Spacer(
          flex: 9,
        ),
        _buildPhoneNumberButton(),
        const SizedBox(
          height: 20.0,
        ),
        _buildSignUpButton(context),
        const Spacer(
          flex: 2,
        ),
        _buildtext(context),
        const Spacer(
          flex: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              child: Divider(
                indent: 5.0,
                endIndent: 10.0,
                thickness: 2,
              ),
            ),
            Text(
              AppLocalization.alreadyhaveanaccount,
              style: TextStyle(color: Colors.black, fontSize: 12.0),
            ),
            Expanded(
              child: Divider(
                indent: 10.0,
                endIndent: 5.0,
                thickness: 2,
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        //_buildSignInButton(context),
        TextButton(
          style: TextButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          onPressed: () {
            signup(context);
          },
          child: const Text(
            AppLocalization.Signin,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildtext(BuildContext context) {
  return Text.rich(
      TextSpan(
        children: <TextSpan>[
          const TextSpan(
            text: 'By tapping Sign up you accept all \n',
          ),
          TextSpan(
            text: 'terms ',
            style: const TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.termsandConditions, (route) => false);
                // print('These are the terms and Conditions');
              },
          ),
          TextSpan(
            text: 'and ',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.termsandConditions, (route) => false);
                // print('These are the terms and Conditions');
              },
          ),
          TextSpan(
            text: 'conditions',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.termsandConditions, (route) => false);
                // print('These are the terms and Conditions');
              },
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      textAlign: TextAlign.center);
}

_buildPhoneNumberButton() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        Row(
          children: const [
            Icon(Icons.arrow_drop_down, color: Colors.red),
            Text(
              "+91",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
          child: VerticalDivider(
            color: Colors.black,
            thickness: 1,
          ),
        ),
        const Expanded(
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Type your phone number',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    ),
  );
}

_buildSignUpButton(BuildContext context) {
  var loginBloc = LoginBloc();
  return BlocBuilder(
      bloc: loginBloc = LoginBloc(),
      builder: () {
        return TextButton(
          onPressed: () async {
            await loginBloc.login(LoginType.google);
            if (loginBloc.state.dataState == DataState.success) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  AppRoutes.userListScreen, (route) => false);
            }
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          child: const Text(
            AppLocalization.Signup,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      });
}

final FirebaseAuth auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
Future<void> signup(BuildContext context) async {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  if (googleSignInAccount != null) {
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);
    UserCredential result = await auth.signInWithCredential(authCredential);
    User? user = result.user;
    //PreferencesHelper.saveLoginData(true);
    print(user);
    Navigator.of(context)
        .pushNamedAndRemoveUntil(AppRoutes.userListScreen, (route) => false);
    // if result not null we simply call the MaterialpageRoute,
    // for go to the HomePage screen

  }
}

SignOutMethod(context) async {
  await signOut();
  Navigator.of(context)
      .pushNamedAndRemoveUntil(AppRoutes.loginScreen, (route) => false);
}

Future<String> signOut() async {
  await googleSignIn.signOut();
  await auth.signOut();
  return "SUCCESS";
}
