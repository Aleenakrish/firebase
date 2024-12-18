import 'package:appwrite/appwrite.dart';
import 'package:appwrteauth/services/appwriteservices.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController _controller=TextEditingController();
  

  Future<void>signup()async{
  print("???????????????????????????????????????????????????????");
  final email = _controller.text;
  final password=_controller.text;
  if(email.isNotEmpty){
    try {
      // await 
    } catch (e) {
      print(e);
    }
  }

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
                // controller: _email,
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
                // controller: _password,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Row(
              children: [
                // Container(
                //   margin: EdgeInsets.only(left: 20, top: 10),
                //   child: Checkbox(
                //     value: ischeck,
                //     onChanged: (value) {
                //       setState(() {
                //         ischeck = !ischeck;
                //       });
                //     },
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 40),
                  child: Text("Show Password"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, "paswrd");
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
                    // Navigator.pushNamed(context, "signuppage");
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
