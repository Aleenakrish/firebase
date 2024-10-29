import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  List ls=[];
  bool ckeck=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 30,),
                Container(
                  child: Text("Login",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 100,),
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
                        color: Colors.grey
                      )
                    ]
                    
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                     
                      labelText: "UserName",
                      labelStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
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
                        color: Colors.grey
                      )
                    ]
                    
                  ),
                  child: TextField(
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
                SizedBox(width: 75,),
                Container(
                  // height: 10,
                  margin: EdgeInsets.only(top: 20),
                  child:Checkbox(value: ls.isNotEmpty,   onChanged: (value) {
                  },),
                  
                  
                ),
                // SizedBox(height:20 ,),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("show password"),
                ),
                
                Container(
                   margin: EdgeInsets.only(top: 20,left: 100),
                  child: TextButton(onPressed: (){}, 
                  child: Text("Forgot password?",style: TextStyle(
                    color: const Color.fromARGB(255, 51, 112, 243)
                  ),)
                  )
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 74,right: 75),
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:  const Color.fromARGB(255, 95, 127, 197)
              ),
              child: TextButton(onPressed: (){},
               child: Text("Login",style: TextStyle(
                color: Colors.white
               ),)),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                 Container(
                    margin: EdgeInsets.only(left: 130),
                    child: Text("Don't have an account?"), 
                ),
                Container(
                  child: TextButton(onPressed: (){},
                   child: Text("Sign Up")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}