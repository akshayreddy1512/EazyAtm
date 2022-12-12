import 'package:case3/home/helpers/app_localization.dart';
import 'package:flutter/material.dart';

class TermsandConditions extends StatelessWidget {
  const TermsandConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppLocalization.alreadyhaveanaccount),
      ),
    );
  }
}