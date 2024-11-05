import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 242, 242),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Center(
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: Colors.red[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 50, right: 50),
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
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.red[200])),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 50, right: 50),
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
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.red[200]),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded,
                    size: 20,
                    color: const Color.fromARGB(255, 206, 62, 51),)
                    ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 50, right: 50),
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
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Cpassword",
                    labelStyle: TextStyle(color: Colors.red[200]),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded,
                    size: 20,
                    color: const Color.fromARGB(255, 206, 62, 51),)
                    ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              height: 55,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 243, 71, 59),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5, color: Colors.grey, offset: Offset(3, 3))
                  ]),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 90, top: 30),
                  child: Text("Already have an account?"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: TextButton(onPressed: () {}, child: Text("Login",
                  style: TextStyle(color: Colors.red),)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50, top: 40),
                  height: 1,
                  width: 150,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, top: 40),
                  child: Text("OR"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, top: 40),
                  height: 1,
                  width: 150,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 70,right: 70),
               decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 204, 34, 22))
                    ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 110),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: Image.asset(
                      "./images/google.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, ),
                   
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
  }
}
