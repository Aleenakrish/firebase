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
      backgroundColor: Colors.white,
      body:Container(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  child: Text("SignUp",style: TextStyle(
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
                     
                      labelText: "Email",
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
             SizedBox(height: 20,),
            Row(
              children: [
                 Container(
                    margin: EdgeInsets.only(left: 130),
                    child: Text("I agree to the "), 
                ),
                Container(
                  child: Text("terms and conditions",style: TextStyle(
                    color: const Color.fromARGB(255, 95, 127, 197)
                  ),), 
                  
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
               child: Text("signup",style: TextStyle(
                color: Colors.white
               ),)),
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                 Container(
                    margin: EdgeInsets.only(left: 130),
                    child: Text("Already have an account?"), 
                ),
                Container(
                  child: TextButton(onPressed: (){},
                   child: Text("Sign in",style: TextStyle(
                    color: const Color.fromARGB(255, 95, 127, 197)
                  ),)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}