import 'package:firebasetodo/homepage.dart';
import 'package:firebasetodo/loginpage.dart';
import 'package:firebasetodo/mainpage.dart';
import 'package:firebasetodo/signuppage.dart';
import 'package:firebasetodo/update.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    MaterialApp(
    
      home: Mainpage(),
      routes: {
        "signuppage":(context)=>Signuppage(),
        "update":(context)=>Update()
      },
    )
  );
}