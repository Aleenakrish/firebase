import 'package:chatproject/firebase_options.dart';
import 'package:chatproject/loginpage.dart';
import 'package:chatproject/mainpage.dart';
import 'package:chatproject/paswrd.dart';
import 'package:chatproject/signuppage.dart';
import 'package:chatproject/userlist.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  final mybox=await Hive.openBox("mybox");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    home: Mainpage(),
    routes: {
      "loginpage": (context) => Loginpage(),
      "signuppage": (context) => Signuppage(),
      "paswrd": (context) => Paswrd(),
      "userlist":(context)=>Users(),
      "mainpage":(context)=>Mainpage()
    },
  ));
}
