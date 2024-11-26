import 'package:appwrtetodo/cardpage.dart';
import 'package:appwrtetodo/homepage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:Homepage(),
      routes: {
        "cardpage":(context)=>Cardpage(),
      },
    )
  );
}