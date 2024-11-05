import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(children: [
         Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Icon(Icons.window,color: Colors.red,),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10,top: 10),
                  child: Icon(Icons.notifications_outlined,),
                ),
                
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.only(left: 50,right: 50),
            height: 180,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 252, 248, 248),
              boxShadow: [
              BoxShadow(blurRadius: 5,
              color: const Color.fromARGB(255, 196, 79, 71),
              // offset: Offset(5, 5)
              )
              ]
            ),
            child:Row(
              children: [
                Container(
                  height: 100,
                  width: 180,
                  margin: EdgeInsets.only(left: 5,top: 5),
                  child: Image.asset("./images/donor.jpg"),
                  
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text("Together, We are",
                        style: TextStyle(color:  const Color.fromARGB(255, 221, 36, 23),
                        fontWeight: FontWeight.bold,fontSize: 20
                        ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 20),
                        child: Text("Kerala's Lifeline",
                         style: TextStyle(color: const Color.fromARGB(255, 221, 36, 23),
                        fontWeight: FontWeight.bold,fontSize: 20
                        ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 180,
                  margin: EdgeInsets.only(left: 5,top: 5),
                  child: Image.asset("./images/infi.png"),
                ),

                    ],
                  ),
                )
              ],
            ) ,
          ),
          // Container(
          //         height: 100,
          //         width: 180,
          //         margin: EdgeInsets.only(left: 50,top: 50),
          //         child: Image.asset("./images/drops.jpg"),
                  
          //       ),

        ]
        ),
      ),
    );
  }
}