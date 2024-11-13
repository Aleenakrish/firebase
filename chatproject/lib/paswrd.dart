import 'package:flutter/material.dart';

class Paswrd extends StatefulWidget {
  const Paswrd({super.key});

  @override
  State<Paswrd> createState() => _PaswrdState();
}

class _PaswrdState extends State<Paswrd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 252, 232),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 55,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            margin: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, labelText: "password"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 100,
            margin: EdgeInsets.only(left: 100, right: 100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: TextButton(onPressed: () {}, child: Text("Confirm")),
          )
        ],
      ),
    );
  }
}
