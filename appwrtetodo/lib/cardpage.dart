import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:appwrtetodo/Todo.dart';
import 'package:appwrtetodo/services/appwriteservice.dart';
import 'package:flutter/material.dart';

class Cardpage extends StatefulWidget {
  const Cardpage({super.key});

  @override
  State<Cardpage> createState() => _CardpageState();
}

class _CardpageState extends State<Cardpage> {
  TextEditingController _controller = TextEditingController();
  late Appwriteservice _appwriteservices;
  List? _task;
  File? _image;
  Uint8List? pic;
  List ls = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _appwriteservices = Appwriteservice();
    _loadTasks();
    _task = [];
  }

  Future<void> _loadTasks() async {
    try {
      final tasks = await _appwriteservices.getTask();
      setState(() {
        _task = tasks.map((e) => Task.formDocument(e)).toList();
        // ,
        print("###############################################");
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> _addTask() async {
    print("////////////////////////////////////////");
    //  print();
    final employee = _controller.text;
    final bytes = await _image!.readAsBytesSync();
    final base64Img = base64Encode(bytes);
    if (employee.isNotEmpty) {
      try {
        await _appwriteservices.addTask(employee, base64Img);
      } catch (e) {
        print(e);
      }
    }
    _controller.clear();
    _loadTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Card(
              margin: EdgeInsets.only(top: 50, left: 10, right: 10),
              color: Colors.white,
              child: GestureDetector(
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            blurStyle: BlurStyle.outer)
                      ]),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 15),
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, color: Colors.grey)
                              ]),
                          child: ClipOval(child: Image.memory(pic=base64Decode(ls[index])),)),////
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 30),
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 5, color: Colors.grey)
                            ]),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(left: 10),
                              child: TextField(
                                controller: _controller,
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            )),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.person,
                                size: 30,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 150),
                        height: 55,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 5, color: Colors.grey)
                            ]),
                        child: TextButton(
                            onPressed: () {
                              _addTask();
                            },
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(color: Colors.black),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
