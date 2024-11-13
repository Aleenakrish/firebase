import 'package:chatpro/loginpage.dart';
import 'package:chatpro/mainpage.dart';
import 'package:chatpro/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    home: Mainpage(),
    routes: {
      "loginpage": (context) => Loginpage(),
      "signuppage": (context) => Signuppage()
    },
  ));
}
