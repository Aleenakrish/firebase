import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  List ls =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("LOGINPAGE"),
      ),
      backgroundColor:  const Color.fromARGB(255, 245, 242, 242),
      ),
      backgroundColor:  const Color.fromARGB(255, 245, 242, 242),
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 50,
                  child: Image.asset("./images/h.jpg"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top:30,left: 50,right: 50),
              padding: EdgeInsets.only(left: 20),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(5, 5)
                )
              ]
              ),
              child: TextField(
              decoration: InputDecoration(
               
                border: InputBorder.none,
                labelText: "UserName",
                labelStyle:TextStyle(color: Colors.grey)
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:30,left: 50,right: 50),
                padding: EdgeInsets.only(left: 20),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(5, 5)
                )
              ]
              ),
                child: TextField(
                decoration: InputDecoration(
                  
                  border: InputBorder.none,
                  labelText: "Password",
                   labelStyle:TextStyle(color: Colors.grey)
                ),
                ),

            ),
          Row(
            children: [
                Container(
                  margin: EdgeInsets.only(left: 55,top: 10),
              child: Checkbox(value: ls.isNotEmpty, onChanged:(value) {
              },),
            ),
            Container(
               margin: EdgeInsets.only(top: 10),
              child: Text("Show Password"),
            ),
            Container(
               margin: EdgeInsets.only(left: 100,top: 10),
              child: TextButton(onPressed: (){}, 
              child:Text("Forget Password?",style: TextStyle(color: Colors.blue[800]),) ),
            )

            ],
          ),
          SizedBox(height: 100,),
           Container(
              margin: EdgeInsets.only(left: 50,right: 50),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 243, 71, 59),
               boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey,
                    offset: Offset(3, 3)
                  )
                 ]
              ),
              child: TextButton(onPressed: (){},
               child: Text("sign Up",
               style: TextStyle(
                color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }
}