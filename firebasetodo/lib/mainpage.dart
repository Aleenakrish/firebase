import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetodo/homepage.dart';
import 'package:firebasetodo/loginpage.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(), 
    builder: (context, snapshot) {
      return snapshot.hasData? Homepage():Loginpage();
      
    },);
  }
}