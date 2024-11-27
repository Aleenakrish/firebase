import 'dart:io';

import 'package:appwrtetodo/Todo.dart';
import 'package:appwrtetodo/services/appwriteservice.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Appwriteservice _appwriteservice;
  List? _Employee;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _appwriteservice = Appwriteservice();
    _Employee = [];
    _loadTask();
  }

  Future<void> _loadTask() async {
    try {
      final employee = await _appwriteservice.getTask();
      setState(() {
        _Employee = employee.map((e) => Task.formDocument(e)).toList();
        print("**************************");
        print(_Employee);
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> _updateTask(task) async {
    try {
      final updatetask =
          await _appwriteservice.updateListStatus(task.id, !task.isActive);
      setState(() {
        task.isActive != updatetask.data["active"];
        _loadTask();
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Employees",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [],
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Expanded(
          child: GridView.builder(
            padding: EdgeInsets.only(left: 10, right: 10, top: 30),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 3 / 3.5,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: _Employee!.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _Employee![index].isActive
                      ? const Color.fromARGB(255, 66, 165, 69)
                      : const Color.fromARGB(255, 190, 30, 19),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Name :",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          _Employee![index].name,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        _updateTask(_Employee![index]);
                      },
                      child: Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          color: _Employee![index].isActive
                              ? const Color.fromARGB(255, 184, 48, 38)
                              : const Color.fromARGB(255, 57, 134, 59),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            _Employee![index].isActive
                                ? "Deactivate"
                                : "Activate",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 241, 240, 241),
        onPressed: () {
          Navigator.pushNamed(context, "cardpage");
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
