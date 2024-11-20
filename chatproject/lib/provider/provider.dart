import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
 class Prov extends ChangeNotifier{
  final mybox=Hive.box('mybox');

 String? _uid;
 String? get uid=>_uid;

 void setUid(String uid){
  _uid=uid;
 
  mybox.put(1, _uid);
  notifyListeners();
 }
 }