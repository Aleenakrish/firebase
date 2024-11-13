import 'package:chatproject/loginpage.dart';
import 'package:chatproject/signuppage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Loginpage(),
    routes: {
      "loginpage": (context) => Loginpage(),
      "signuppage": (context) => Signuppage()
    },
  ));
}
