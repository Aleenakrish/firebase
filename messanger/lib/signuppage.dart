import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _cpassword = TextEditingController();

  Future signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
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
      backgroundColor: const Color.fromARGB(255, 231, 252, 232),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 252, 232),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 30, right: 30),
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
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_rounded,
                      size: 20,
                      color: Colors.black,
                    )),
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
                controller: _cpassword,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Cpassword",
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_rounded,
                      size: 20,
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 55,
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
                    // if (_password.text == _cpassword.text) {
                    signup();
                    //     } else {
                    //       print("incorrect");
                    //     }
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 65, top: 30),
                  child: Text("Already have an account?"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "loginpage");
                      },
                      child: Text(
                        "SIGNIN",
                        style: TextStyle(color: Colors.green[800]),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  height: 1,
                  width: 155,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(left: 3, top: 10),
                  child: Text("OR"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 3, top: 10),
                  height: 1,
                  width: 155,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 40, right: 40),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: ClipRRect(
                          child: Image.asset(
                            "./images/gl.png",
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        )),
                  ),

                  // child:
                  // ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 2,
                    ),
                    child: Text(
                      "Sign Up with Google",
                      style: TextStyle(fontSize: 15),
                    ),
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
