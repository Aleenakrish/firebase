import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<dynamic>ls=[];

  final mybox = Hive.box("mybox");

  void getchats() {
    if (mybox.get(1)!= null) {
      setState(() {
        ls = mybox.get(4);
      });
    }
    print("///////////////////////////////////////////////////////////");
    print(mybox.get(4));
    print(ls.length);
    // print(ls);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getchats();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 160, 216, 161),
        title: Container(
          child: Icon(
            Icons.window,
            size: 30,
            color: Colors.grey[700],
          ),
          
          
        ),
        actions: [
          Container(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(child: Text("Chats"),),
                IconButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                    },
                    icon: Icon(
                      Icons.logout,
                      size: 30,
                      color: Colors.grey[700],
                    ))
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        
        child: ListView(
          children: [
            Container(
               height: 60,width: 300,
                margin: EdgeInsets.only(left: 10,top: 20,right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color: Colors.white,boxShadow: [
                    BoxShadow(blurRadius: 2,color: Colors.grey)
                  ]
                ),
              child:Row(
              children: [
                Container(
                   margin: EdgeInsets.only(left: 10),
                  child: Icon(Icons.search,color: Colors.grey,size: 33,),),
                Container(
                  height: 60,width: 300,
                margin: EdgeInsets.only(left: 10,top: 5),
                  child: Expanded(child:TextField(decoration:InputDecoration(
                    border: InputBorder.none,hintText: "Search"
                  ),)
                  )
                  )
              ],
            ) ,),
             Container(
              height: MediaQuery.of(context).size.height * .8 / 1.1,
              child: ls.length == 0
                  ? Center(
                      child: Text("No Messages..."),
                    )
                  : Container(
                      height: MediaQuery.of(context).size.height * .8 / 1.1,
                      alignment: Alignment.centerRight,
                      child: ListView.builder(
                        itemCount: ls.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 70,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left:10,top: 20),
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 221, 219, 219),
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20,top: 20),
                                  height: 65,
                                  // child: Text(ls[index].toString()),
                                  child: TextButton(onPressed: (){
                                    Navigator.pushNamed(context, "chatpage");
                                  }, child: Text(ls[index].toString())),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      
                    ),
                  
                    
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Container(
            //         child: TextButton(
            //           onPressed: () async {
            //             await FirebaseAuth.instance.signOut();
            //           },
            //           child: Text(
            //             "signout",
            //             style: TextStyle(color: Colors.black),
            //           ),
            //         ),
            //         ),
            //   ],
            // )
           
             
          // ],
        
       
       ),
        Container(
              height: 60,
              width: 70,
              margin: EdgeInsets.only(left: 290, right: 10, top: 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color:  const Color.fromARGB(255, 160, 216, 161)),
              child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "userlist");
                  },
                  child: Icon(
                    Icons.add_comment_sharp,
                    color: Colors.grey[800],
                  )),
            ),
       
          ]
      ),
      ),
      
    );
  }
}
