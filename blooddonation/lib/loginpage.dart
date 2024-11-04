import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  // bool chexkboxvalue=false;
  bool ischeck = false;
  List ls = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              // child: Text("LOGINPAGE"),
              ),
          backgroundColor: Colors.white),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  // margin: EdgeInsets.only(left: 15),
                  height: 270,
                  width: 220,
                  child: Image.asset("./images/h.jpg"),
                ),
                Container(
                  child: Text(
                    "BLOOD BANK",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[800]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 50, right: 50),
              padding: EdgeInsets.only(left: 20),
              height: 50,
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
              height: 50,
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
                    labelStyle: TextStyle(color: Colors.red[200])),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 46, top: 10),
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
                  margin: EdgeInsets.only(left: 50, top: 10),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.blue[800]),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 120,
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              height: 50,
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
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
