import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _task = TextEditingController();
  final CollectionReference Todos =
      FirebaseFirestore.instance.collection("Todos");
//  List<dynamic>ls=["hy","hello","hai"];

  void addTodo() {
    final data = {'Task': _task.text};
    Todos.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("HOMEPAGE")),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    child: TextField(
                  controller: _task,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                )),
                Container(
                  child: TextButton(
                      onPressed: () {
                        addTodo();
                      },
                      child: Text("ADD")),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(5, 5))
                          ]),
                      child: ListTile(
                          // leading: Text(index.toString()),
                          // title: Text(ls[index].toString()),
                          ),
                    );
                  })),
        ],
      ),
    );
  }
}
