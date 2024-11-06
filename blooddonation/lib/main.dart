import 'package:blooddonation/donorspage.dart';
import 'package:blooddonation/firstpage.dart';
import 'package:blooddonation/homepage.dart';
import 'package:blooddonation/loginpage.dart';
import 'package:blooddonation/mainpage.dart';
import 'package:blooddonation/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    home: Firstpage(),
    routes: {
      "/loginpage": (context) => Loginpage(),
      "/signuppage": (context) => Signuppage(),
      // "/homepage": (context) => Homepage()
    },
  ));
}
