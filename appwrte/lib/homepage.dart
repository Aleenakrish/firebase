import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  TextEditingController _controller = TextEditingController();
  late AppwriteService _appwriteService

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todolist"),
      ),
      body: Container(
       child: ListView(
        children: [
          Row(
            children: [
              Container(
                child: Expanded(child: TextField(
                  
                )
                ),
              ),
              Container(child: TextButton(onPressed: (){}, child: Text("add")),)
            ],
          )
        ],
       ),
      ),
    );
  }
}