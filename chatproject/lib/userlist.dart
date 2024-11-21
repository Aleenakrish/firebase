import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  List<Map<dynamic, dynamic>> ls = [];
  final CollectionReference usrs =
      FirebaseFirestore.instance.collection("user");
  final mybox = Hive.box('mybox');

  void getuser() async {
    // CollectionReference usrs = FirebaseFirestore.instance.collection("user");
    QuerySnapshot querySnapShot = await usrs.get();

    setState(() {
      ls = querySnapShot.docs
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
    });
    print(ls);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Userlist"),
        backgroundColor: Colors.white,
      ),
      body: ls.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              height: double.infinity,
              width: double.infinity,
              color:Colors.white,
              child: Column(
                children: [
                  Container(child: Divider(),),
                  Container(
                    height: 600,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: ls.length,
                      itemBuilder: (context, index) {
                        var use = ls[index];
                        return GestureDetector(
                          onTap: () {
                            print(use["userid"]);
                            String uid = use["userid"];
                            mybox.put(2, uid);
                            Navigator.pushNamed(context, "chatpage");
                          },
                          child: 
                          
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                // color:  const Color.fromARGB(255, 86, 49, 250),
                          
                                color:Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            margin:
                                EdgeInsets.only(left: 10, right: 15, bottom: 15,top: 10),
                            width: double.infinity,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Container(
                                  height: 62,
                                  width: 62,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color:
                                        const Color.fromARGB(255, 229, 234, 238),
                                  ),
                                  child: Icon(Icons.person,color: Colors.grey,size: 30,),
                                ),
                                Container(
                                   padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    use["username"] ?? "No name",
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                  ),
                                ),
                               
                              ],
                            ),
                          
                          ),
                          
                        );
                      },
                    ),
                  ),
                ],
              ),

              
            ),
    );
  }
}