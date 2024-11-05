import 'package:blooddonation/firstpage.dart';
import 'package:blooddonation/homepage.dart';
import 'package:blooddonation/loginpage.dart';
import 'package:blooddonation/signuppage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    routes: {
      "/loginpage": (context) => Loginpage(),
      "/signuppage": (context) => Signuppage()
    },
  ));
}
