import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Paswrd extends StatefulWidget {
  const Paswrd({super.key});

  @override
  State<Paswrd> createState() => _PaswrdState();
}

class _PaswrdState extends State<Paswrd> {
  TextEditingController email = TextEditingController();
  Future resetpaswrd() async {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: email.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 252, 232),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 252, 232),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 55,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3, color: Colors.grey, offset: Offset(4, 4))
                ]),
            margin: EdgeInsets.only(left: 30, right: 30, top: 180),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 100,
            margin: EdgeInsets.only(left: 180, right: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 63, 133, 65),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3, color: Colors.grey, offset: Offset(4, 4))
                ]),
            child: TextButton(
                onPressed: () {
                  resetpaswrd();
                },
                child: Text(
                  "Reset Password",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
