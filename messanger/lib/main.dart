import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:messanger/firebase_options.dart';
import 'package:messanger/loginpage.dart';
import 'package:messanger/mainpage.dart';
import 'package:messanger/paswrd.dart';
import 'package:messanger/signuppage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: Mainpage(),
    routes: {
      "loginpage": (context) => Loginpage(),
      "signuppage": (context) => Signuppage(),
      "paswrd": (context) => Paswrd()
    },
  ));
}
