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
        backgroundColor: Colors.green,
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
              children: [
                IconButton(
                    onPressed: () {},
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
      backgroundColor: const Color.fromARGB(255, 231, 252, 232),
      body: Container(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    child: TextButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                      },
                      child: Text(
                        "signout",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
