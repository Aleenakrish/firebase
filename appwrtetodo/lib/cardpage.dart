import 'dart:convert';
import 'dart:io';

import 'package:appwrtetodo/services/appwriteservice.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Cardpage extends StatefulWidget {
  const Cardpage({super.key});

  @override
  State<Cardpage> createState() => _CardpageState();
}

class _CardpageState extends State<Cardpage> {
  TextEditingController add = TextEditingController();
  late Appwriteservice _appwriteSevices;
  File? _image;
  final ImagePicker _picker = ImagePicker();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _appwriteSevices = Appwriteservice();
  }

  Future<void> addEmployee() async {
    final bytes = await _image!.readAsBytes();
    final base64img = base64Encode(bytes);
    final task = add.text;
    if (task.isNotEmpty) {
      try {
        print("===============================");
        await _appwriteSevices.addTask(task, base64img);
        add.clear();
      } catch (e) {
        print("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
        print(e);
      }
    }
  }

  void pickImg() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.grey[900],
            title: Text(
              "Choose any?",
              style: TextStyle(color: Colors.green),
            ),
            actions: [
              TextButton(
                onPressed: gallery,
                child: Text("Gallery", style: TextStyle(color: Colors.green)),
              ),
              TextButton(
                onPressed: camera,
                child: Text("Camera", style: TextStyle(color: Colors.green)),
              ),
            ],
          );
        });
  }

  void gallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pop(context);
      } else {
        print("error!");
      }
    });
  }

  void camera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pop(context);
      } else {
        print("error!");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 246, 246),
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: pickImg,
                child: Center(
                  child: ClipOval(
                    child: _image != null
                        ? Image.file(
                            _image!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(blurRadius: 10, color: Colors.grey)
                                ]),
                            child: Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 50,
                            ),
                          ),
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              padding: EdgeInsets.only(left: 20),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey,
                    // offset: Offset(5, 5),
                    // spreadRadius: 0
                  ),
                ],
              ),
              child: TextField(
                controller: add,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.black)),
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "homepage", (route) => false);
                    },
                    child: Text(
                      "CANCEL",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: TextButton(
                    onPressed: () {
                      addEmployee();
                      // Navigator.pushNamedAndRemoveUntil(
                      //     context, "first", (route) => false);
                    },
                    child: Text(
                      "ADD",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
