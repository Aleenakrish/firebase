import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 160, 216, 161),
        title: Container(
          child: Icon(
            Icons.window,
            size: 30,
            color: Colors.white,
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
                      color: Colors.white,
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
            Container(
              height: 60,
              width: 70,
              margin: EdgeInsets.only(left: 290, right: 10, top: 620),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color:  const Color.fromARGB(255, 160, 216, 161)),
              child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "userlist");
                  },
                  child: Icon(
                    Icons.add_comment_sharp,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
