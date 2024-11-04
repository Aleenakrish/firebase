import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 242, 242),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 500,
              width: 700,
              child: Image.asset("./images/log.jpg"),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              height: 50,
              width: 300,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/loginpage');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.red),
                  )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 245, 242, 242),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5, color: Colors.grey, offset: Offset(3, 3))
                  ]),
            ),
            SizedBox(
              height: 20,
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/signuppage');
                  },
                  child: Text(
                    "sign Up",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                child: Text(
                  "Sign In with",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 150),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 245, 242, 242),
                  ),
                  child: Icon(
                    Icons.facebook_rounded,
                    color: Colors.blue[800],
                    size: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 245, 242, 242),
                  ),
                  child: Image.asset(
                    "./images/google.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                //  Container(
                //     margin: EdgeInsets.only(left: 20),
                //     height: 50,
                //     width: 50,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(100),
                //     color: const Color.fromARGB(255, 245, 242, 242),),
                //     child: Image.asset("./images/in.jpg",
                //     fit:BoxFit.contain ,),

                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
