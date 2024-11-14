import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool ischeck = false;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  final CollectionReference user =
      FirebaseFirestore.instance.collection("user");

  Future signin() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _email.text.trim(), password: _password.text.trim());

    print("///////////////////////");
    print(user.user!.uid);
    print(user.user!.displayName);
    print("///////////////////////");
    var usname = user.user!.uid;
    var uid = user.user!.displayName;
    final Userid = {"usname": uid, "uid": usname};

    print(Userid);
  }

  Future adduser(usid)async{

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              // child: Text("LOGINPAGE"),
              ),
          backgroundColor: const Color.fromARGB(255, 231, 252, 232)),
      backgroundColor: const Color.fromARGB(255, 231, 252, 232),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100, left: 30, right: 30),
              padding: EdgeInsets.only(left: 20),
              height: 55,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 5, offset: Offset(5, 5))
                  ]),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              padding: EdgeInsets.only(left: 20),
              height: 55,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 5, offset: Offset(5, 5))
                  ]),
              child: TextField(
                controller: _password,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Checkbox(
                    value: ischeck,
                    onChanged: (value) {
                      setState(() {
                        ischeck = !ischeck;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text("Show Password"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "paswrd");
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.green[800]),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 55, 119, 57),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5, color: Colors.grey, offset: Offset(3, 3))
                  ]),
              child: TextButton(
                  onPressed: () {
                    signin();
                  },
                  child: Text(
                    "SIGNIN",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 80, top: 20),
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "signuppage");
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.green[800]),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
