import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  List ls = [];
  bool ckeck = false;

  Future login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email.text.trim(), password: _password.text.trim());
  }

  Future signinwithgoogle() async {
     print("oooooooooooooooooooooooooooooooooooooooooooooooooooo");
    try {
      final Firebaseauth = await FirebaseAuth.instance;
      final googleService = await GoogleSignIn();
      final googleUser = await googleService.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final cred = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
      final user = await Firebaseauth.signInWithCredential(cred);
      print(user);
      print("oooooooooooooooooooooooooooooooooooooooooooooooooooo");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(5, 5),
                            color: Colors.grey)
                      ]),
                  child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(5, 5),
                            color: Colors.grey)
                      ]),
                  child: TextField(
                    controller: _password,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  // height: 10,
                  margin: EdgeInsets.only(top: 20),
                  child: Checkbox(
                    value: ls.isNotEmpty,
                    onChanged: (value) {},
                  ),
                ),
                // SizedBox(height:20 ,),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("show password"),
                ),

                Container(
                    margin: EdgeInsets.only(top: 20, left: 40),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 51, 112, 243)),
                        )))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 74, right: 75),
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 95, 127, 197)),
              child: TextButton(
                  onPressed: () {
                    login();
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    signinwithgoogle();
                  },
                  child: Text("login with")),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 70),
                  child: Text("Don't have an account?"),
                ),
                Container(
                  child: TextButton(onPressed: () {}, child: Text("Sign Up")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
