import 'package:case3/home/app_preferences/preference_helper.dart';
import 'package:flutter/material.dart';
import 'package:case3/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //final prefs = await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  await PreferencesHelper.prefs.init();
  runApp(const MyApp());
}







