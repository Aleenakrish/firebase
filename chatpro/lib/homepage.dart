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
      backgroundColor: const Color.fromARGB(255, 231, 252, 232),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            child: Text("signout")),
      ),
    );
  }
}
