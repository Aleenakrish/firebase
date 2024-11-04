import 'package:blooddonation/firstpage.dart';
import 'package:blooddonation/loginpage.dart';
import 'package:blooddonation/signuppage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Signuppage(),
    routes: {
      "/loginpage": (context) => Loginpage(),
      "/signuppage": (context) => Signuppage()
    },
  ));
}
