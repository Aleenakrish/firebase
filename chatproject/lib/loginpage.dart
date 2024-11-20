import 'package:chatproject/provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool ischeck = false;
   TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
 
  final user = Hive.box("mybox");

  final CollectionReference usr =
      FirebaseFirestore.instance.collection("user");
  Future addUser(userid, username) async {
    QuerySnapshot querySnapshot =
        await usr.where("userid", isEqualTo: userid).get();
    if (querySnapshot.docs.isEmpty) {
      usr.add({"userid": userid, "username": username});
    }
  }

  Future signin() async {
    try {
      UserCredential users = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email.text, password: _password.text);
      
      Provider.of<Prov>(context, listen: false)
          .setUid(users.user?.uid ?? '');
          
      print("==============================================================");
      print(Provider.of<Prov>(context,listen: false).uid);
      print("=================================================");
      addUser(users.user?.uid, users.user?.displayName);
      final mp = {
        "id": users.user?.uid,
      };

      user.put(1, mp);
      print("==============================================================");
      print(user.get(1));
      print("==============================================================");
    } catch (e) {
      print("Sign-in error:$e");
     
    }
  }

  Future signinWithGoogle() async {
    try {
      final firebaseAuth = await FirebaseAuth.instance;
      final googleservice = await GoogleSignIn();
      final googleUser = await googleservice.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final cred = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
      final user = await firebaseAuth.signInWithCredential(cred);
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> signIn() async {}
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
