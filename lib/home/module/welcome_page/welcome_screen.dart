import 'package:case3/home/helpers/app_route.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 80.0),
          child: _buildColumn(context),
        ),
      ),
    );
  }

  Widget _buildColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Welcome',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Manage your Transactions',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
        const Text(
          'Seamlessly & Intuitively',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(
          flex: 20,
        ),
        const SizedBox(
          width: double.infinity,
          child: Text(
            'Forgot Password ? ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
        const Spacer(
          flex: 10,
        ),
        _buildSignInButton(context),
        const SizedBox(
          height: 20.0,
        ),
        _buildCreateButton(),
      ],
    );
  }

  Widget _buildSignInButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(AppRoutes.loginScreen, (route) => false);
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: const Text(
        'Sign in with Phone number',
        style: TextStyle(
          color: Colors.redAccent,
          //fontFamily: 'SquarePeg',
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildCreateButton() {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Create an Account',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
