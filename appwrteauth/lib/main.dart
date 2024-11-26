import 'package:appwrteauth/signinpage.dart';
import 'package:appwrteauth/signuppage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Loginpage(),
    routes: {
      "signinpage": (context) => Loginpage(),
      "signuppage": (context) => Signuppage()},
  ));
}
