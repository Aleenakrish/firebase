
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  List<Map<String, dynamic>> usersList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers();
  }

  void getUsers() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    QuerySnapshot querySnapshot = await users.get();
    setState(() {
      usersList = querySnapshot.docs
          .map((doc) =>
              doc.data() as Map<String, dynamic>) 
          .toList();
    });
    print(usersList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Userslist"),
        ),
      ),
      body: usersList.isEmpty
          ? Center(
              child:
                  CircularProgressIndicator())
          : ListView.builder(
              itemCount: usersList.length,
              itemBuilder: (context, index) {
               
                var user = usersList[index];
                return ListTile(
                  title: Text(user['username'] ??
                      'No User Name'),           
                  onTap: () {
                    print('Tapped on ${user['userid']}');
                    Provider.of(context, listen: false).setSid(user['userid'] ?? '');
                    print(Provider.of(context, listen: false).uid);
                  },
                );
              },
            ),
    );
  }
}